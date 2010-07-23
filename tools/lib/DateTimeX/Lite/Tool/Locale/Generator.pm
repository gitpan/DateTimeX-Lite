package DateTimeX::Lite::Tool::Locale::Generator;
use utf8;
use Any::Moose;
use Any::Moose 'Util::TypeConstraints';
use Data::Dumper;
use DateTimeX::Lite::Tool::Locale::ISO639;
use DateTimeX::Lite::Tool::Locale::LDML;
use Path::Class ();
use File::chdir;
use File::Temp ();
use LWP::UserAgent;
use Carp::Always;

our $VERSION = '0.00001';

with any_moose 'X::Getopt';

subtype 'DateTimeX::Lite::Tool::Locale::Generator::Version'
    => as 'Str'
    => where {
        /^\d+\.\d+\.\d+$/
    }
;

has 'verbose' => (
    is => 'rw',
    isa => 'Bool',
    default => 1
);

has 'version' => (
    is => 'rw',
    isa => 'DateTimeX::Lite::Tool::Locale::Generator::Version',
    required => 1,
);

has 'dest' => (
    is => 'rw',
    isa => 'Path::Class::Dir',
    coerce => 1,
    default => sub { Path::Class::Dir->new(File::Temp::tempdir( CLEANUP => 1 )) }
);

__PACKAGE__->meta->make_immutable;

no Any::Moose;
no Any::Moose 'Util::TypeConstraints';

my %DATA;

sub get_ldml_from_id {
    my ($self, $id) = @_;
    return $DATA{$id};
}

sub run {
    my $self = shift;

    my $ua   = LWP::UserAgent->new();
    $ua->mirror(
        sprintf("http://unicode.org/Public/cldr/%s/core.zip", $self->version),
        $self->dest->file("core.zip")
    );
    
    my @files;
    {
        local $CWD = $self->dest->stringify;
        system("unzip", "core.zip") and die $!;

        @files = $self->read_all_files($self->dest->subdir("main"));
    }

    %DATA = map { ($_->id, $_) } @files;

    $self->generate_dat_files(@files);
}

sub read_all_files {
    my $self = shift;
    my $dir = Path::Class::Dir->new($_[0]);

    my @ldml;
    while ( my $file = $dir->next() ) {
        next unless -f $file;
        next unless $file->basename() =~ /\.xml$/;
#        next if $opts{file} && $opts{file} ne $file->basename();

        print "Reading $file\n" if $self->verbose;

        my $ldml = DateTimeX::Lite::Tool::Locale::LDML->new_from_file($file);

        # Any locale without this cannot be registered by
        # DateTime::Locale.
        next unless defined $ldml->en_language();

        push @ldml, $ldml;
    }

    return sort { $a->id() cmp $b->id() } @ldml;
}

sub generate_dat_files {
    my ($self, @ldml) = @_;

    print "\nGenerating PM files\n" if $self->verbose;

    my %LdmlIDs = map { ($_->id() => 1) } @ldml;
    my %Aliases;
    for my $ldml ( sort @ldml ) {
        if ( $self->verbose )
        {
            print sprintf( <<"EOF", $ldml->id(), $ldml->parent_id(), $ldml->version(), $ldml->generation_date() );
  %s
    parent_id:       %s
    version:         %s
    generation date: %s

EOF
        }

        $self->generate_dat_file($ldml);

        # Generate alias data
        my $three;
        if ($three = $self->iso639_2_to_3( $ldml->language() ) ) {
            my $three_id = join( '_', grep { defined $_ }
                $three, $ldml->territory(), $ldml->script(), $ldml->variant());
            if (! exists $LdmlIDs{ $three_id }) {
                $Aliases{ $three_id } = $ldml->id;
            }
        }
    }

    %Aliases = ( %Aliases, %{ DateTimeX::Lite::Tool::Locale::LDML->Aliases() } );
    { # generate Aliases.pm
        my $dat = Path::Class::File->new( qw(share DateTimeX Lite Locale Aliases.dat) ) ;
        if (! -d $dat->parent) {
            $dat->parent->mkpath;
        }

        open(my $fh, '>', $dat) or die "Could not open file $dat: $!";
        print $fh Data::Dumper::Dumper(\%Aliases);
        close($fh);
    }
}

sub iso639_2_to_3 {
    return $DateTimeX::Lite::Tool::Locale::ISO639::Map{ $_[1] };
}


sub generate_dat_file {
    my ($self, $ldml) = @_;

    my $dat_file = Path::Class::File->new( qw( share DateTimeX Lite Locale ), $ldml->id() . q{.dat} );
#    write_to_manifest($dat_file);

    my $parent = $dat_file->parent;
    if (! -d $parent) {
        $parent->mkpath() or die;
    }

    my $fh = $dat_file->openw()
        or die "Cannot write to $dat_file: $!";
    $fh->binmode(':raw');

    print $fh <<EOF or die "could not write to $dat_file: $!";
###########################################################################
#
# This file is auto-generated by the Perl DateTime Suite time locale
# generator ($VERSION).  This code generator comes with the
# DateTime::Locale distribution in the tools/ directory, and is called
# $0.
#
# This file as generated from the CLDR XML locale data.  See the
# LICENSE.cldr file included in this distribution for license details.
#
# Do not edit this file directly.
#
###########################################################################
use utf8;
EOF

    my $data = $self->generate_data($ldml->id);

    local $Data::Dumper::Sortkeys = 1;
    local $Data::Dumper::Indent = 1;
    print $fh Data::Dumper::Dumper($data);
    close($fh);
}

sub generate_data {
    my ($self, $ldml) = @_;

    $ldml = $DATA{$ldml} if ! ref $ldml;
    return unless $ldml;

    my %data = (
        cldr_version => $self->version,
    );

    if (my $parent_id = $ldml->parent_id) {
        print "fetching parent $parent_id for ", $ldml->id, "\n";
        my $parent_data = $self->generate_data($parent_id);
        if ($parent_data) {
            %data = (%$parent_data, %data);
        }

    }

    $data{id} = $ldml->id;

    foreach my $attr ( sort { $a->name() cmp $b->name() }
                       DateTimeX::Lite::Tool::Locale::LDML->meta()->get_all_attributes() )
    {
        next unless $attr->name() =~
            /^(?:day_|month_|quarter_|am_pm|era_|date_|time_|datetime_|first_day_)/;

        next if $self->make_alias( $ldml, \%data, $attr->name() );

        my $name  = $attr->name;
        my $value = $ldml->$name;
        my $type = $attr->type_constraint();

        my $ok = 0;
        if (defined $value) {
            if ($type->is_a_type_of('ArrayRef')) {
                $ok = scalar @$value;
            } elsif ($type->is_a_type_of('HashRef')) {
                $ok = scalar keys %$value;
            } elsif ($type->is_a_type_of('Str') || $type->is_a_type_of('Int')) {
                $ok = length $value;
            } else {
                die "Cannot handle type: $name";
            }
        
            $data{ $name } = $value if $ok;
        }
    }

    my $formats = $ldml->available_formats;
    foreach my $format (sort keys %$formats) {
        $data{ "_format_for_$format" } = $formats->{$format}
            if defined $formats->{$format};
    }

    foreach my $k qw( en_language en_script en_territory en_variant native_language native_script native_territory native_variant) {
        my $v = $ldml->$k();
        if (defined $v) {
            $data{$k} = $v;
        }
    }

    return \%data;
}


sub make_alias {
    my $self = shift;
    my $ldml = shift;
    my $data = shift;
    my $name = shift;

    if ( $name =~ /stand_alone/ )
    {
        return $self->make_stand_alone_alias( $ldml, $data, $name );
    }
    elsif ( $name =~ /(?:abbreviated|narrow)/ )
    {
        return $self->make_length_alias( $ldml, $data, $name );
    }

}

sub make_stand_alone_alias
{
    my $self = shift;
    my $ldml = shift;
    my $data = shift;
    my $name = shift;

    ( my $format = $name ) =~ s/stand_alone/format/;

    return $self->maybe_make_alias( $ldml, $data, $name, $format );
}

sub make_length_alias
{
    my $self = shift;
    my $ldml = shift;
    my $data = shift;
    my $name = shift;
    # This isn't well documented (or really documented at all) in the
    # LDML spec, but the example seem to suggest that for the narrow
    # form, the format type should "inherit" from the stand-alone
    # type if possible, rather than the abbreviated type.
    #
    # See
    # http://www.unicode.org/cldr/data/charts/by_type/calendar-gregorian.day.html
    # for examples of the expected output. Note that the format narrow
    # days for English are inherited from its stand-alone narrow form,
    # not the root locale.
    if ( $name =~ /format_narrow/ )
    {
        ( my $to_name = $name ) =~ s/format/stand_alone/;
        return 1
            if $self->maybe_make_alias( $ldml, $data, $name, $to_name );
    }

    # It seems like the quarters should just inherit up the (Perl)
    # inheritance chain, rather than from the next biggest size. See
    # http://www.unicode.org/cldr/data/charts/by_type/calendar-gregorian.quarter.html
    # for an example. Note that the English format narrow quarter is
    # "1", not "Q1".
    if ( $name =~ /quarter_(\w+)_narrow/ )
    {
        return;
    }

    ( my $to_name = $name );
    $to_name =~ s/abbreviated/wide/;
    $to_name =~ s/narrow/abbreviated/;

    return $self->maybe_make_alias( $ldml, $data, $name, $to_name );
}

sub maybe_make_alias
{
    my $self = shift;
    my $ldml = shift;
    my $data = shift;
    my $from = shift;
    my $to   = shift;

    my $val = $ldml->$from();

    return if @{ $val };

    return unless $ldml->can($to);

    my $to_val = $ldml->$to();

    return unless @{ $to_val };

    $data->{$from} = "alias:$to";

    return 1;
}

sub write_arrayref_sub
{
    my $self = shift;
    my $ldml = shift;
    my $data = shift;
    my $name = shift;

    my $arr = $ldml->$name();

    return unless @{ $arr };

    $data->{$name} = $arr;
}


1;
