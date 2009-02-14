# $Id$

package DateTimeX::Lite::TimeZone::Floating;
use strict;
use base qw(DateTimeX::Lite::TimeZone::OffsetOnly);

sub new {
    my $class = shift;
    bless {name => 'floating', offset => 0}, $class;
}

sub is_floating { 1 };

1;