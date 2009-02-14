# This file is auto-generated by the Perl DateTimeX Suite time zone
# code generator (0.07) This code generator comes with the
# DateTimeX::Lite::TimeZone module distribution in the tools/ directory

#
# Do not edit this file directly.

package DateTimeX::Lite::TimeZone::Catalog;

use strict;

use vars qw( @ALL @CATEGORY_NAMES %CATEGORIES %ZONES_BY_COUNTRY %LINKS $LOADED_CATALOG );

sub OlsonVersion { '2009b' }

%LINKS = (
  'AKST9AKDT' => 'America/Anchorage',
  'Africa/Asmera' => 'Africa/Asmara',
  'Africa/Timbuktu' => 'Africa/Bamako',
  'America/Argentina/ComodRivadavia' => 'America/Argentina/Catamarca',
  'America/Atka' => 'America/Adak',
  'America/Buenos_Aires' => 'America/Argentina/Buenos_Aires',
  'America/Catamarca' => 'America/Argentina/Catamarca',
  'America/Coral_Harbour' => 'America/Atikokan',
  'America/Cordoba' => 'America/Argentina/Cordoba',
  'America/Ensenada' => 'America/Tijuana',
  'America/Fort_Wayne' => 'America/Indiana/Indianapolis',
  'America/Indianapolis' => 'America/Indiana/Indianapolis',
  'America/Jujuy' => 'America/Argentina/Jujuy',
  'America/Knox_IN' => 'America/Indiana/Knox',
  'America/Louisville' => 'America/Kentucky/Louisville',
  'America/Marigot' => 'America/Guadeloupe',
  'America/Mendoza' => 'America/Argentina/Mendoza',
  'America/Porto_Acre' => 'America/Rio_Branco',
  'America/Rosario' => 'America/Argentina/Cordoba',
  'America/Shiprock' => 'America/Denver',
  'America/St_Barthelemy' => 'America/Guadeloupe',
  'America/Virgin' => 'America/St_Thomas',
  'Antarctica/South_Pole' => 'Antarctica/McMurdo',
  'Arctic/Longyearbyen' => 'Europe/Oslo',
  'Asia/Ashkhabad' => 'Asia/Ashgabat',
  'Asia/Calcutta' => 'Asia/Kolkata',
  'Asia/Chungking' => 'Asia/Chongqing',
  'Asia/Dacca' => 'Asia/Dhaka',
  'Asia/Istanbul' => 'Europe/Istanbul',
  'Asia/Katmandu' => 'Asia/Kathmandu',
  'Asia/Macao' => 'Asia/Macau',
  'Asia/Saigon' => 'Asia/Ho_Chi_Minh',
  'Asia/Tel_Aviv' => 'Asia/Jerusalem',
  'Asia/Thimbu' => 'Asia/Thimphu',
  'Asia/Ujung_Pandang' => 'Asia/Makassar',
  'Asia/Ulan_Bator' => 'Asia/Ulaanbaatar',
  'Atlantic/Faeroe' => 'Atlantic/Faroe',
  'Atlantic/Jan_Mayen' => 'Europe/Oslo',
  'Australia/ACT' => 'Australia/Sydney',
  'Australia/Canberra' => 'Australia/Sydney',
  'Australia/LHI' => 'Australia/Lord_Howe',
  'Australia/NSW' => 'Australia/Sydney',
  'Australia/North' => 'Australia/Darwin',
  'Australia/Queensland' => 'Australia/Brisbane',
  'Australia/South' => 'Australia/Adelaide',
  'Australia/Tasmania' => 'Australia/Hobart',
  'Australia/Victoria' => 'Australia/Melbourne',
  'Australia/West' => 'Australia/Perth',
  'Australia/Yancowinna' => 'Australia/Broken_Hill',
  'Brazil/Acre' => 'America/Rio_Branco',
  'Brazil/DeNoronha' => 'America/Noronha',
  'Brazil/East' => 'America/Sao_Paulo',
  'Brazil/West' => 'America/Manaus',
  'Canada/Atlantic' => 'America/Halifax',
  'Canada/Central' => 'America/Winnipeg',
  'Canada/East-Saskatchewan' => 'America/Regina',
  'Canada/Eastern' => 'America/Toronto',
  'Canada/Mountain' => 'America/Edmonton',
  'Canada/Newfoundland' => 'America/St_Johns',
  'Canada/Pacific' => 'America/Vancouver',
  'Canada/Saskatchewan' => 'America/Regina',
  'Canada/Yukon' => 'America/Whitehorse',
  'Chile/Continental' => 'America/Santiago',
  'Chile/EasterIsland' => 'Pacific/Easter',
  'Cuba' => 'America/Havana',
  'Egypt' => 'Africa/Cairo',
  'Eire' => 'Europe/Dublin',
  'Etc/GMT' => 'UTC',
  'Etc/GMT+0' => 'UTC',
  'Etc/UCT' => 'UTC',
  'Etc/UTC' => 'UTC',
  'Etc/Universal' => 'UTC',
  'Etc/Zulu' => 'UTC',
  'Europe/Belfast' => 'Europe/London',
  'Europe/Bratislava' => 'Europe/Prague',
  'Europe/Guernsey' => 'Europe/London',
  'Europe/Isle_of_Man' => 'Europe/London',
  'Europe/Jersey' => 'Europe/London',
  'Europe/Ljubljana' => 'Europe/Belgrade',
  'Europe/Mariehamn' => 'Europe/Helsinki',
  'Europe/Nicosia' => 'Asia/Nicosia',
  'Europe/Podgorica' => 'Europe/Belgrade',
  'Europe/San_Marino' => 'Europe/Rome',
  'Europe/Sarajevo' => 'Europe/Belgrade',
  'Europe/Skopje' => 'Europe/Belgrade',
  'Europe/Tiraspol' => 'Europe/Chisinau',
  'Europe/Vatican' => 'Europe/Rome',
  'Europe/Zagreb' => 'Europe/Belgrade',
  'GB' => 'Europe/London',
  'GB-Eire' => 'Europe/London',
  'GMT' => 'UTC',
  'GMT+0' => 'UTC',
  'GMT-0' => 'UTC',
  'GMT0' => 'UTC',
  'Greenwich' => 'UTC',
  'Hongkong' => 'Asia/Hong_Kong',
  'Iceland' => 'Atlantic/Reykjavik',
  'Iran' => 'Asia/Tehran',
  'Israel' => 'Asia/Jerusalem',
  'JST-9' => 'Asia/Tokyo',
  'Jamaica' => 'America/Jamaica',
  'Japan' => 'Asia/Tokyo',
  'Kwajalein' => 'Pacific/Kwajalein',
  'Libya' => 'Africa/Tripoli',
  'Mexico/BajaNorte' => 'America/Tijuana',
  'Mexico/BajaSur' => 'America/Mazatlan',
  'Mexico/General' => 'America/Mexico_City',
  'NZ' => 'Pacific/Auckland',
  'NZ-CHAT' => 'Pacific/Chatham',
  'Navajo' => 'America/Denver',
  'PRC' => 'Asia/Shanghai',
  'Pacific/Samoa' => 'Pacific/Pago_Pago',
  'Pacific/Yap' => 'Pacific/Truk',
  'Poland' => 'Europe/Warsaw',
  'Portugal' => 'Europe/Lisbon',
  'ROC' => 'Asia/Taipei',
  'ROK' => 'Asia/Seoul',
  'Singapore' => 'Asia/Singapore',
  'Turkey' => 'Europe/Istanbul',
  'UCT' => 'UTC',
  'US/Alaska' => 'America/Anchorage',
  'US/Aleutian' => 'America/Adak',
  'US/Arizona' => 'America/Phoenix',
  'US/Central' => 'America/Chicago',
  'US/East-Indiana' => 'America/Indiana/Indianapolis',
  'US/Eastern' => 'America/New_York',
  'US/Hawaii' => 'Pacific/Honolulu',
  'US/Indiana-Starke' => 'America/Indiana/Knox',
  'US/Michigan' => 'America/Detroit',
  'US/Mountain' => 'America/Denver',
  'US/Pacific' => 'America/Los_Angeles',
  'US/Pacific-New' => 'America/Los_Angeles',
  'US/Samoa' => 'Pacific/Pago_Pago',
  'Universal' => 'UTC',
  'W-SU' => 'Europe/Moscow',
  'Zulu' => 'UTC'
)
;

sub load {
    my $mode = '';
    while (<DATA>) {
        chomp;
        next unless length();

        if (/^__(.+)__$/) {
            if ($1 eq 'ZONES') {
                $mode = 'zone';
            } elsif ($1 eq 'CATEGORY_NAMES') {
                $mode = 'category_names';
            } elsif ($1 eq 'CATEGORIES') {
                $mode = 'categories';
            } elsif ($1 eq 'BY_COUNTRY') {
                $mode = 'by_country';
            } elsif ($1 eq 'END') {
                last;
            } else {
                $mode = '';
            }
            next;
        }

        if ($mode eq 'zone') {
            push @ALL, $_;
        } elsif ($mode eq 'category_names') {
            push @CATEGORY_NAMES, $_;
        } elsif ($mode eq 'by_country') {
            my ($name, @list) = split(/\t/, $_);
            $ZONES_BY_COUNTRY{$name} = \@list;
        } elsif ($mode eq 'categories') {
            my ($name, @list) = split(/\t/, $_);
            $CATEGORIES{$name} = \@list;
        }
    }
    $LOADED_CATALOG = 1;
}

1;

__DATA__
__ZONES__
Africa/Abidjan
Africa/Accra
Africa/Addis_Ababa
Africa/Algiers
Africa/Asmara
Africa/Bamako
Africa/Bangui
Africa/Banjul
Africa/Bissau
Africa/Blantyre
Africa/Brazzaville
Africa/Bujumbura
Africa/Cairo
Africa/Casablanca
Africa/Ceuta
Africa/Conakry
Africa/Dakar
Africa/Dar_es_Salaam
Africa/Djibouti
Africa/Douala
Africa/El_Aaiun
Africa/Freetown
Africa/Gaborone
Africa/Harare
Africa/Johannesburg
Africa/Kampala
Africa/Khartoum
Africa/Kigali
Africa/Kinshasa
Africa/Lagos
Africa/Libreville
Africa/Lome
Africa/Luanda
Africa/Lubumbashi
Africa/Lusaka
Africa/Malabo
Africa/Maputo
Africa/Maseru
Africa/Mbabane
Africa/Mogadishu
Africa/Monrovia
Africa/Nairobi
Africa/Ndjamena
Africa/Niamey
Africa/Nouakchott
Africa/Ouagadougou
Africa/Porto-Novo
Africa/Sao_Tome
Africa/Tripoli
Africa/Tunis
Africa/Windhoek
America/Adak
America/Anchorage
America/Anguilla
America/Antigua
America/Araguaina
America/Argentina/Buenos_Aires
America/Argentina/Catamarca
America/Argentina/Cordoba
America/Argentina/Jujuy
America/Argentina/La_Rioja
America/Argentina/Mendoza
America/Argentina/Rio_Gallegos
America/Argentina/Salta
America/Argentina/San_Juan
America/Argentina/San_Luis
America/Argentina/Tucuman
America/Argentina/Ushuaia
America/Aruba
America/Asuncion
America/Atikokan
America/Bahia
America/Barbados
America/Belem
America/Belize
America/Blanc-Sablon
America/Boa_Vista
America/Bogota
America/Boise
America/Cambridge_Bay
America/Campo_Grande
America/Cancun
America/Caracas
America/Cayenne
America/Cayman
America/Chicago
America/Chihuahua
America/Costa_Rica
America/Cuiaba
America/Curacao
America/Danmarkshavn
America/Dawson
America/Dawson_Creek
America/Denver
America/Detroit
America/Dominica
America/Edmonton
America/Eirunepe
America/El_Salvador
America/Fortaleza
America/Glace_Bay
America/Godthab
America/Goose_Bay
America/Grand_Turk
America/Grenada
America/Guadeloupe
America/Guatemala
America/Guayaquil
America/Guyana
America/Halifax
America/Havana
America/Hermosillo
America/Indiana/Indianapolis
America/Indiana/Knox
America/Indiana/Marengo
America/Indiana/Petersburg
America/Indiana/Tell_City
America/Indiana/Vevay
America/Indiana/Vincennes
America/Indiana/Winamac
America/Inuvik
America/Iqaluit
America/Jamaica
America/Juneau
America/Kentucky/Louisville
America/Kentucky/Monticello
America/La_Paz
America/Lima
America/Los_Angeles
America/Maceio
America/Managua
America/Manaus
America/Martinique
America/Mazatlan
America/Menominee
America/Merida
America/Mexico_City
America/Miquelon
America/Moncton
America/Monterrey
America/Montevideo
America/Montreal
America/Montserrat
America/Nassau
America/New_York
America/Nipigon
America/Nome
America/Noronha
America/North_Dakota/Center
America/North_Dakota/New_Salem
America/Panama
America/Pangnirtung
America/Paramaribo
America/Phoenix
America/Port-au-Prince
America/Port_of_Spain
America/Porto_Velho
America/Puerto_Rico
America/Rainy_River
America/Rankin_Inlet
America/Recife
America/Regina
America/Resolute
America/Rio_Branco
America/Santarem
America/Santiago
America/Santo_Domingo
America/Sao_Paulo
America/Scoresbysund
America/St_Johns
America/St_Kitts
America/St_Lucia
America/St_Thomas
America/St_Vincent
America/Swift_Current
America/Tegucigalpa
America/Thule
America/Thunder_Bay
America/Tijuana
America/Toronto
America/Tortola
America/Vancouver
America/Whitehorse
America/Winnipeg
America/Yakutat
America/Yellowknife
Antarctica/Casey
Antarctica/Davis
Antarctica/DumontDUrville
Antarctica/Mawson
Antarctica/McMurdo
Antarctica/Palmer
Antarctica/Rothera
Antarctica/Syowa
Antarctica/Vostok
Asia/Aden
Asia/Almaty
Asia/Amman
Asia/Anadyr
Asia/Aqtau
Asia/Aqtobe
Asia/Ashgabat
Asia/Baghdad
Asia/Bahrain
Asia/Baku
Asia/Bangkok
Asia/Beirut
Asia/Bishkek
Asia/Brunei
Asia/Choibalsan
Asia/Chongqing
Asia/Colombo
Asia/Damascus
Asia/Dhaka
Asia/Dili
Asia/Dubai
Asia/Dushanbe
Asia/Gaza
Asia/Harbin
Asia/Ho_Chi_Minh
Asia/Hong_Kong
Asia/Hovd
Asia/Irkutsk
Asia/Jakarta
Asia/Jayapura
Asia/Jerusalem
Asia/Kabul
Asia/Kamchatka
Asia/Karachi
Asia/Kashgar
Asia/Kathmandu
Asia/Kolkata
Asia/Krasnoyarsk
Asia/Kuala_Lumpur
Asia/Kuching
Asia/Kuwait
Asia/Macau
Asia/Magadan
Asia/Makassar
Asia/Manila
Asia/Muscat
Asia/Nicosia
Asia/Novosibirsk
Asia/Omsk
Asia/Oral
Asia/Phnom_Penh
Asia/Pontianak
Asia/Pyongyang
Asia/Qatar
Asia/Qyzylorda
Asia/Rangoon
Asia/Riyadh
Asia/Sakhalin
Asia/Samarkand
Asia/Seoul
Asia/Shanghai
Asia/Singapore
Asia/Taipei
Asia/Tashkent
Asia/Tbilisi
Asia/Tehran
Asia/Thimphu
Asia/Tokyo
Asia/Ulaanbaatar
Asia/Urumqi
Asia/Vientiane
Asia/Vladivostok
Asia/Yakutsk
Asia/Yekaterinburg
Asia/Yerevan
Atlantic/Azores
Atlantic/Bermuda
Atlantic/Canary
Atlantic/Cape_Verde
Atlantic/Faroe
Atlantic/Madeira
Atlantic/Reykjavik
Atlantic/South_Georgia
Atlantic/St_Helena
Atlantic/Stanley
Australia/Adelaide
Australia/Brisbane
Australia/Broken_Hill
Australia/Currie
Australia/Darwin
Australia/Eucla
Australia/Hobart
Australia/Lindeman
Australia/Lord_Howe
Australia/Melbourne
Australia/Perth
Australia/Sydney
CET
CST6CDT
EET
EST
EST5EDT
Europe/Amsterdam
Europe/Andorra
Europe/Athens
Europe/Belgrade
Europe/Berlin
Europe/Brussels
Europe/Bucharest
Europe/Budapest
Europe/Chisinau
Europe/Copenhagen
Europe/Dublin
Europe/Gibraltar
Europe/Helsinki
Europe/Istanbul
Europe/Kaliningrad
Europe/Kiev
Europe/Lisbon
Europe/London
Europe/Luxembourg
Europe/Madrid
Europe/Malta
Europe/Minsk
Europe/Monaco
Europe/Moscow
Europe/Oslo
Europe/Paris
Europe/Prague
Europe/Riga
Europe/Rome
Europe/Samara
Europe/Simferopol
Europe/Sofia
Europe/Stockholm
Europe/Tallinn
Europe/Tirane
Europe/Uzhgorod
Europe/Vaduz
Europe/Vienna
Europe/Vilnius
Europe/Volgograd
Europe/Warsaw
Europe/Zaporozhye
Europe/Zurich
HST
Indian/Antananarivo
Indian/Chagos
Indian/Christmas
Indian/Cocos
Indian/Comoro
Indian/Kerguelen
Indian/Mahe
Indian/Maldives
Indian/Mauritius
Indian/Mayotte
Indian/Reunion
MET
MST
MST7MDT
PST8PDT
Pacific/Apia
Pacific/Auckland
Pacific/Chatham
Pacific/Easter
Pacific/Efate
Pacific/Enderbury
Pacific/Fakaofo
Pacific/Fiji
Pacific/Funafuti
Pacific/Galapagos
Pacific/Gambier
Pacific/Guadalcanal
Pacific/Guam
Pacific/Honolulu
Pacific/Johnston
Pacific/Kiritimati
Pacific/Kosrae
Pacific/Kwajalein
Pacific/Majuro
Pacific/Marquesas
Pacific/Midway
Pacific/Nauru
Pacific/Niue
Pacific/Norfolk
Pacific/Noumea
Pacific/Pago_Pago
Pacific/Palau
Pacific/Pitcairn
Pacific/Ponape
Pacific/Port_Moresby
Pacific/Rarotonga
Pacific/Saipan
Pacific/Tahiti
Pacific/Tarawa
Pacific/Tongatapu
Pacific/Truk
Pacific/Wake
Pacific/Wallis
WET
__CATEGORY_NAMES__
Africa
America
Antarctica
Asia
Atlantic
Australia
Europe
Indian
Pacific
__CATEGORIES__
Africa	Abidjan	Accra	Addis_Ababa	Algiers	Asmara	Bamako	Bangui	Banjul	Bissau	Blantyre	Brazzaville	Bujumbura	Cairo	Casablanca	Ceuta	Conakry	Dakar	Dar_es_Salaam	Djibouti	Douala	El_Aaiun	Freetown	Gaborone	Harare	Johannesburg	Kampala	Khartoum	Kigali	Kinshasa	Lagos	Libreville	Lome	Luanda	Lubumbashi	Lusaka	Malabo	Maputo	Maseru	Mbabane	Mogadishu	Monrovia	Nairobi	Ndjamena	Niamey	Nouakchott	Ouagadougou	Porto-Novo	Sao_Tome	Tripoli	Tunis	Windhoek
America	Adak	Anchorage	Anguilla	Antigua	Araguaina	Argentina/Buenos_Aires	Argentina/Catamarca	Argentina/Cordoba	Argentina/Jujuy	Argentina/La_Rioja	Argentina/Mendoza	Argentina/Rio_Gallegos	Argentina/Salta	Argentina/San_Juan	Argentina/San_Luis	Argentina/Tucuman	Argentina/Ushuaia	Aruba	Asuncion	Atikokan	Bahia	Barbados	Belem	Belize	Blanc-Sablon	Boa_Vista	Bogota	Boise	Cambridge_Bay	Campo_Grande	Cancun	Caracas	Cayenne	Cayman	Chicago	Chihuahua	Costa_Rica	Cuiaba	Curacao	Danmarkshavn	Dawson	Dawson_Creek	Denver	Detroit	Dominica	Edmonton	Eirunepe	El_Salvador	Fortaleza	Glace_Bay	Godthab	Goose_Bay	Grand_Turk	Grenada	Guadeloupe	Guatemala	Guayaquil	Guyana	Halifax	Havana	Hermosillo	Indiana/Indianapolis	Indiana/Knox	Indiana/Marengo	Indiana/Petersburg	Indiana/Tell_City	Indiana/Vevay	Indiana/Vincennes	Indiana/Winamac	Inuvik	Iqaluit	Jamaica	Juneau	Kentucky/Louisville	Kentucky/Monticello	La_Paz	Lima	Los_Angeles	Maceio	Managua	Manaus	Martinique	Mazatlan	Menominee	Merida	Mexico_City	Miquelon	Moncton	Monterrey	Montevideo	Montreal	Montserrat	Nassau	New_York	Nipigon	Nome	Noronha	North_Dakota/Center	North_Dakota/New_Salem	Panama	Pangnirtung	Paramaribo	Phoenix	Port-au-Prince	Port_of_Spain	Porto_Velho	Puerto_Rico	Rainy_River	Rankin_Inlet	Recife	Regina	Resolute	Rio_Branco	Santarem	Santiago	Santo_Domingo	Sao_Paulo	Scoresbysund	St_Johns	St_Kitts	St_Lucia	St_Thomas	St_Vincent	Swift_Current	Tegucigalpa	Thule	Thunder_Bay	Tijuana	Toronto	Tortola	Vancouver	Whitehorse	Winnipeg	Yakutat	Yellowknife
Antarctica	Casey	Davis	DumontDUrville	Mawson	McMurdo	Palmer	Rothera	Syowa	Vostok
Asia	Aden	Almaty	Amman	Anadyr	Aqtau	Aqtobe	Ashgabat	Baghdad	Bahrain	Baku	Bangkok	Beirut	Bishkek	Brunei	Choibalsan	Chongqing	Colombo	Damascus	Dhaka	Dili	Dubai	Dushanbe	Gaza	Harbin	Ho_Chi_Minh	Hong_Kong	Hovd	Irkutsk	Jakarta	Jayapura	Jerusalem	Kabul	Kamchatka	Karachi	Kashgar	Kathmandu	Kolkata	Krasnoyarsk	Kuala_Lumpur	Kuching	Kuwait	Macau	Magadan	Makassar	Manila	Muscat	Nicosia	Novosibirsk	Omsk	Oral	Phnom_Penh	Pontianak	Pyongyang	Qatar	Qyzylorda	Rangoon	Riyadh	Sakhalin	Samarkand	Seoul	Shanghai	Singapore	Taipei	Tashkent	Tbilisi	Tehran	Thimphu	Tokyo	Ulaanbaatar	Urumqi	Vientiane	Vladivostok	Yakutsk	Yekaterinburg	Yerevan
Atlantic	Azores	Bermuda	Canary	Cape_Verde	Faroe	Madeira	Reykjavik	South_Georgia	St_Helena	Stanley
Australia	Adelaide	Brisbane	Broken_Hill	Currie	Darwin	Eucla	Hobart	Lindeman	Lord_Howe	Melbourne	Perth	Sydney
Europe	Amsterdam	Andorra	Athens	Belgrade	Berlin	Brussels	Bucharest	Budapest	Chisinau	Copenhagen	Dublin	Gibraltar	Helsinki	Istanbul	Kaliningrad	Kiev	Lisbon	London	Luxembourg	Madrid	Malta	Minsk	Monaco	Moscow	Oslo	Paris	Prague	Riga	Rome	Samara	Simferopol	Sofia	Stockholm	Tallinn	Tirane	Uzhgorod	Vaduz	Vienna	Vilnius	Volgograd	Warsaw	Zaporozhye	Zurich
Indian	Antananarivo	Chagos	Christmas	Cocos	Comoro	Kerguelen	Mahe	Maldives	Mauritius	Mayotte	Reunion
Pacific	Apia	Auckland	Chatham	Easter	Efate	Enderbury	Fakaofo	Fiji	Funafuti	Galapagos	Gambier	Guadalcanal	Guam	Honolulu	Johnston	Kiritimati	Kosrae	Kwajalein	Majuro	Marquesas	Midway	Nauru	Niue	Norfolk	Noumea	Pago_Pago	Palau	Pitcairn	Ponape	Port_Moresby	Rarotonga	Saipan	Tahiti	Tarawa	Tongatapu	Truk	Wake	Wallis

__BY_COUNTRY__
ad	Europe/Andorra
ae	Asia/Dubai
af	Asia/Kabul
ag	America/Antigua
ai	America/Anguilla
al	Europe/Tirane
am	Asia/Yerevan
an	America/Curacao
ao	Africa/Luanda
aq	Antarctica/McMurdo	Antarctica/South_Pole	Antarctica/Rothera	Antarctica/Palmer	Antarctica/Mawson	Antarctica/Davis	Antarctica/Casey	Antarctica/Vostok	Antarctica/DumontDUrville	Antarctica/Syowa
ar	America/Argentina/Buenos_Aires	America/Argentina/Cordoba	America/Argentina/Salta	America/Argentina/Jujuy	America/Argentina/Tucuman	America/Argentina/Catamarca	America/Argentina/La_Rioja	America/Argentina/San_Juan	America/Argentina/Mendoza	America/Argentina/San_Luis	America/Argentina/Rio_Gallegos	America/Argentina/Ushuaia
as	Pacific/Pago_Pago
at	Europe/Vienna
au	Australia/Lord_Howe	Australia/Hobart	Australia/Currie	Australia/Melbourne	Australia/Sydney	Australia/Broken_Hill	Australia/Brisbane	Australia/Lindeman	Australia/Adelaide	Australia/Darwin	Australia/Perth	Australia/Eucla
aw	America/Aruba
ax	Europe/Mariehamn
az	Asia/Baku
ba	Europe/Sarajevo
bb	America/Barbados
bd	Asia/Dhaka
be	Europe/Brussels
bf	Africa/Ouagadougou
bg	Europe/Sofia
bh	Asia/Bahrain
bi	Africa/Bujumbura
bj	Africa/Porto-Novo
bl	America/St_Barthelemy
bm	Atlantic/Bermuda
bn	Asia/Brunei
bo	America/La_Paz
br	America/Noronha	America/Belem	America/Fortaleza	America/Recife	America/Araguaina	America/Maceio	America/Bahia	America/Sao_Paulo	America/Campo_Grande	America/Cuiaba	America/Santarem	America/Porto_Velho	America/Boa_Vista	America/Manaus	America/Eirunepe	America/Rio_Branco
bs	America/Nassau
bt	Asia/Thimphu
bw	Africa/Gaborone
by	Europe/Minsk
bz	America/Belize
ca	America/St_Johns	America/Halifax	America/Glace_Bay	America/Moncton	America/Goose_Bay	America/Blanc-Sablon	America/Montreal	America/Toronto	America/Nipigon	America/Thunder_Bay	America/Iqaluit	America/Pangnirtung	America/Resolute	America/Atikokan	America/Rankin_Inlet	America/Winnipeg	America/Rainy_River	America/Regina	America/Swift_Current	America/Edmonton	America/Cambridge_Bay	America/Yellowknife	America/Inuvik	America/Dawson_Creek	America/Vancouver	America/Whitehorse	America/Dawson
cc	Indian/Cocos
cd	Africa/Kinshasa	Africa/Lubumbashi
cf	Africa/Bangui
cg	Africa/Brazzaville
ch	Europe/Zurich
ci	Africa/Abidjan
ck	Pacific/Rarotonga
cl	America/Santiago	Pacific/Easter
cm	Africa/Douala
cn	Asia/Shanghai	Asia/Harbin	Asia/Chongqing	Asia/Urumqi	Asia/Kashgar
co	America/Bogota
cr	America/Costa_Rica
cu	America/Havana
cv	Atlantic/Cape_Verde
cx	Indian/Christmas
cy	Asia/Nicosia
cz	Europe/Prague
de	Europe/Berlin
dj	Africa/Djibouti
dk	Europe/Copenhagen
dm	America/Dominica
do	America/Santo_Domingo
dz	Africa/Algiers
ec	America/Guayaquil	Pacific/Galapagos
ee	Europe/Tallinn
eg	Africa/Cairo
eh	Africa/El_Aaiun
er	Africa/Asmara
es	Europe/Madrid	Africa/Ceuta	Atlantic/Canary
et	Africa/Addis_Ababa
fi	Europe/Helsinki
fj	Pacific/Fiji
fk	Atlantic/Stanley
fm	Pacific/Truk	Pacific/Ponape	Pacific/Kosrae
fo	Atlantic/Faroe
fr	Europe/Paris
ga	Africa/Libreville
gb	Europe/London
gd	America/Grenada
ge	Asia/Tbilisi
gf	America/Cayenne
gg	Europe/Guernsey
gh	Africa/Accra
gi	Europe/Gibraltar
gl	America/Godthab	America/Danmarkshavn	America/Scoresbysund	America/Thule
gm	Africa/Banjul
gn	Africa/Conakry
gp	America/Guadeloupe
gq	Africa/Malabo
gr	Europe/Athens
gs	Atlantic/South_Georgia
gt	America/Guatemala
gu	Pacific/Guam
gw	Africa/Bissau
gy	America/Guyana
hk	Asia/Hong_Kong
hn	America/Tegucigalpa
hr	Europe/Zagreb
ht	America/Port-au-Prince
hu	Europe/Budapest
id	Asia/Jakarta	Asia/Pontianak	Asia/Makassar	Asia/Jayapura
ie	Europe/Dublin
il	Asia/Jerusalem
im	Europe/Isle_of_Man
in	Asia/Kolkata
io	Indian/Chagos
iq	Asia/Baghdad
ir	Asia/Tehran
is	Atlantic/Reykjavik
it	Europe/Rome
je	Europe/Jersey
jm	America/Jamaica
jo	Asia/Amman
jp	Asia/Tokyo
ke	Africa/Nairobi
kg	Asia/Bishkek
kh	Asia/Phnom_Penh
ki	Pacific/Tarawa	Pacific/Enderbury	Pacific/Kiritimati
km	Indian/Comoro
kn	America/St_Kitts
kp	Asia/Pyongyang
kr	Asia/Seoul
kw	Asia/Kuwait
ky	America/Cayman
kz	Asia/Almaty	Asia/Qyzylorda	Asia/Aqtobe	Asia/Aqtau	Asia/Oral
la	Asia/Vientiane
lb	Asia/Beirut
lc	America/St_Lucia
li	Europe/Vaduz
lk	Asia/Colombo
lr	Africa/Monrovia
ls	Africa/Maseru
lt	Europe/Vilnius
lu	Europe/Luxembourg
lv	Europe/Riga
ly	Africa/Tripoli
ma	Africa/Casablanca
mc	Europe/Monaco
md	Europe/Chisinau
me	Europe/Podgorica
mf	America/Marigot
mg	Indian/Antananarivo
mh	Pacific/Majuro	Pacific/Kwajalein
mk	Europe/Skopje
ml	Africa/Bamako
mm	Asia/Rangoon
mn	Asia/Ulaanbaatar	Asia/Hovd	Asia/Choibalsan
mo	Asia/Macau
mp	Pacific/Saipan
mq	America/Martinique
mr	Africa/Nouakchott
ms	America/Montserrat
mt	Europe/Malta
mu	Indian/Mauritius
mv	Indian/Maldives
mw	Africa/Blantyre
mx	America/Mexico_City	America/Cancun	America/Merida	America/Monterrey	America/Mazatlan	America/Chihuahua	America/Hermosillo	America/Tijuana
my	Asia/Kuala_Lumpur	Asia/Kuching
mz	Africa/Maputo
na	Africa/Windhoek
nc	Pacific/Noumea
ne	Africa/Niamey
nf	Pacific/Norfolk
ng	Africa/Lagos
ni	America/Managua
nl	Europe/Amsterdam
no	Europe/Oslo
np	Asia/Kathmandu
nr	Pacific/Nauru
nu	Pacific/Niue
nz	Pacific/Auckland	Pacific/Chatham
om	Asia/Muscat
pa	America/Panama
pe	America/Lima
pf	Pacific/Tahiti	Pacific/Marquesas	Pacific/Gambier
pg	Pacific/Port_Moresby
ph	Asia/Manila
pk	Asia/Karachi
pl	Europe/Warsaw
pm	America/Miquelon
pn	Pacific/Pitcairn
pr	America/Puerto_Rico
ps	Asia/Gaza
pt	Europe/Lisbon	Atlantic/Madeira	Atlantic/Azores
pw	Pacific/Palau
py	America/Asuncion
qa	Asia/Qatar
re	Indian/Reunion
ro	Europe/Bucharest
rs	Europe/Belgrade
ru	Europe/Kaliningrad	Europe/Moscow	Europe/Volgograd	Europe/Samara	Asia/Yekaterinburg	Asia/Omsk	Asia/Novosibirsk	Asia/Krasnoyarsk	Asia/Irkutsk	Asia/Yakutsk	Asia/Vladivostok	Asia/Sakhalin	Asia/Magadan	Asia/Kamchatka	Asia/Anadyr
rw	Africa/Kigali
sa	Asia/Riyadh
sb	Pacific/Guadalcanal
sc	Indian/Mahe
sd	Africa/Khartoum
se	Europe/Stockholm
sg	Asia/Singapore
sh	Atlantic/St_Helena
si	Europe/Ljubljana
sj	Arctic/Longyearbyen
sk	Europe/Bratislava
sl	Africa/Freetown
sm	Europe/San_Marino
sn	Africa/Dakar
so	Africa/Mogadishu
sr	America/Paramaribo
st	Africa/Sao_Tome
sv	America/El_Salvador
sy	Asia/Damascus
sz	Africa/Mbabane
tc	America/Grand_Turk
td	Africa/Ndjamena
tf	Indian/Kerguelen
tg	Africa/Lome
th	Asia/Bangkok
tj	Asia/Dushanbe
tk	Pacific/Fakaofo
tl	Asia/Dili
tm	Asia/Ashgabat
tn	Africa/Tunis
to	Pacific/Tongatapu
tr	Europe/Istanbul
tt	America/Port_of_Spain
tv	Pacific/Funafuti
tw	Asia/Taipei
tz	Africa/Dar_es_Salaam
ua	Europe/Kiev	Europe/Uzhgorod	Europe/Zaporozhye	Europe/Simferopol
ug	Africa/Kampala
uk	Europe/London
um	Pacific/Johnston	Pacific/Midway	Pacific/Wake
us	America/New_York	America/Detroit	America/Kentucky/Louisville	America/Kentucky/Monticello	America/Indiana/Indianapolis	America/Indiana/Vincennes	America/Indiana/Winamac	America/Indiana/Marengo	America/Indiana/Petersburg	America/Indiana/Vevay	America/Chicago	America/Indiana/Tell_City	America/Indiana/Knox	America/Menominee	America/North_Dakota/Center	America/North_Dakota/New_Salem	America/Denver	America/Boise	America/Shiprock	America/Phoenix	America/Los_Angeles	America/Anchorage	America/Juneau	America/Yakutat	America/Nome	America/Adak	Pacific/Honolulu
uy	America/Montevideo
uz	Asia/Samarkand	Asia/Tashkent
va	Europe/Vatican
vc	America/St_Vincent
ve	America/Caracas
vg	America/Tortola
vi	America/St_Thomas
vn	Asia/Ho_Chi_Minh
vu	Pacific/Efate
wf	Pacific/Wallis
ws	Pacific/Apia
ye	Asia/Aden
yt	Indian/Mayotte
za	Africa/Johannesburg
zm	Africa/Lusaka
zw	Africa/Harare

__END__

=head1 NAME

DateTimeX::Lite::TimeZone::Catalog - Provides a list of all valid time zone names

=head1 SYNOPSIS

See DateTimeX::Lite::TimeZone for API details.

=head1 DESCRIPTION

This module contains an enumerated list of all known system timezones,
so that applications can easily present a list of timezones.

=head1 AVAILABLE ZONES

=head2 Zones by Region

=head3 Africa

  Africa/Abidjan
  Africa/Accra
  Africa/Addis_Ababa
  Africa/Algiers
  Africa/Asmara
  Africa/Bamako
  Africa/Bangui
  Africa/Banjul
  Africa/Bissau
  Africa/Blantyre
  Africa/Brazzaville
  Africa/Bujumbura
  Africa/Cairo
  Africa/Casablanca
  Africa/Conakry
  Africa/Dakar
  Africa/Dar_es_Salaam
  Africa/Djibouti
  Africa/Douala
  Africa/El_Aaiun
  Africa/Freetown
  Africa/Gaborone
  Africa/Harare
  Africa/Johannesburg
  Africa/Kampala
  Africa/Khartoum
  Africa/Kigali
  Africa/Kinshasa
  Africa/Lagos
  Africa/Libreville
  Africa/Lome
  Africa/Luanda
  Africa/Lubumbashi
  Africa/Lusaka
  Africa/Malabo
  Africa/Maputo
  Africa/Maseru
  Africa/Mbabane
  Africa/Mogadishu
  Africa/Monrovia
  Africa/Nairobi
  Africa/Ndjamena
  Africa/Niamey
  Africa/Nouakchott
  Africa/Ouagadougou
  Africa/Porto-Novo
  Africa/Sao_Tome
  Africa/Tripoli
  Africa/Tunis
  Africa/Windhoek
  Africa/Ceuta

=head3 America

  America/Danmarkshavn
  America/Godthab
  America/Scoresbysund
  America/Thule
  America/Adak
  America/Anchorage
  America/Anguilla
  America/Antigua
  America/Atikokan
  America/Barbados
  America/Belize
  America/Blanc-Sablon
  America/Boise
  America/Cambridge_Bay
  America/Cancun
  America/Cayman
  America/Chicago
  America/Chihuahua
  America/Costa_Rica
  America/Dawson
  America/Dawson_Creek
  America/Denver
  America/Detroit
  America/Dominica
  America/Edmonton
  America/El_Salvador
  America/Glace_Bay
  America/Goose_Bay
  America/Grand_Turk
  America/Grenada
  America/Guadeloupe
  America/Guatemala
  America/Halifax
  America/Havana
  America/Hermosillo
  America/Indiana/Indianapolis
  America/Indiana/Knox
  America/Indiana/Marengo
  America/Indiana/Petersburg
  America/Indiana/Tell_City
  America/Indiana/Vevay
  America/Indiana/Vincennes
  America/Indiana/Winamac
  America/Inuvik
  America/Iqaluit
  America/Jamaica
  America/Juneau
  America/Kentucky/Louisville
  America/Kentucky/Monticello
  America/Los_Angeles
  America/Managua
  America/Martinique
  America/Mazatlan
  America/Menominee
  America/Merida
  America/Mexico_City
  America/Miquelon
  America/Moncton
  America/Monterrey
  America/Montreal
  America/Montserrat
  America/Nassau
  America/New_York
  America/Nipigon
  America/Nome
  America/North_Dakota/Center
  America/North_Dakota/New_Salem
  America/Panama
  America/Pangnirtung
  America/Phoenix
  America/Port-au-Prince
  America/Puerto_Rico
  America/Rainy_River
  America/Rankin_Inlet
  America/Regina
  America/Resolute
  America/Santo_Domingo
  America/St_Johns
  America/St_Kitts
  America/St_Lucia
  America/St_Thomas
  America/St_Vincent
  America/Swift_Current
  America/Tegucigalpa
  America/Thunder_Bay
  America/Tijuana
  America/Toronto
  America/Tortola
  America/Vancouver
  America/Whitehorse
  America/Winnipeg
  America/Yakutat
  America/Yellowknife
  America/Araguaina
  America/Argentina/Buenos_Aires
  America/Argentina/Catamarca
  America/Argentina/Cordoba
  America/Argentina/Jujuy
  America/Argentina/La_Rioja
  America/Argentina/Mendoza
  America/Argentina/Rio_Gallegos
  America/Argentina/Salta
  America/Argentina/San_Juan
  America/Argentina/San_Luis
  America/Argentina/Tucuman
  America/Argentina/Ushuaia
  America/Aruba
  America/Asuncion
  America/Bahia
  America/Belem
  America/Boa_Vista
  America/Bogota
  America/Campo_Grande
  America/Caracas
  America/Cayenne
  America/Cuiaba
  America/Curacao
  America/Eirunepe
  America/Fortaleza
  America/Guayaquil
  America/Guyana
  America/La_Paz
  America/Lima
  America/Maceio
  America/Manaus
  America/Montevideo
  America/Noronha
  America/Paramaribo
  America/Port_of_Spain
  America/Porto_Velho
  America/Recife
  America/Rio_Branco
  America/Santarem
  America/Santiago
  America/Sao_Paulo

=head3 Antarctica

  Antarctica/Casey
  Antarctica/Davis
  Antarctica/DumontDUrville
  Antarctica/Mawson
  Antarctica/McMurdo
  Antarctica/Palmer
  Antarctica/Rothera
  Antarctica/Syowa
  Antarctica/Vostok

=head3 Asia

  Asia/Aden
  Asia/Almaty
  Asia/Amman
  Asia/Aqtau
  Asia/Aqtobe
  Asia/Ashgabat
  Asia/Baghdad
  Asia/Bahrain
  Asia/Baku
  Asia/Bangkok
  Asia/Beirut
  Asia/Bishkek
  Asia/Brunei
  Asia/Choibalsan
  Asia/Chongqing
  Asia/Colombo
  Asia/Damascus
  Asia/Dhaka
  Asia/Dili
  Asia/Dubai
  Asia/Dushanbe
  Asia/Gaza
  Asia/Harbin
  Asia/Ho_Chi_Minh
  Asia/Hong_Kong
  Asia/Hovd
  Asia/Jakarta
  Asia/Jayapura
  Asia/Jerusalem
  Asia/Kabul
  Asia/Karachi
  Asia/Kashgar
  Asia/Kathmandu
  Asia/Kolkata
  Asia/Kuala_Lumpur
  Asia/Kuching
  Asia/Kuwait
  Asia/Macau
  Asia/Makassar
  Asia/Manila
  Asia/Muscat
  Asia/Nicosia
  Asia/Oral
  Asia/Phnom_Penh
  Asia/Pontianak
  Asia/Pyongyang
  Asia/Qatar
  Asia/Qyzylorda
  Asia/Rangoon
  Asia/Riyadh
  Asia/Samarkand
  Asia/Seoul
  Asia/Shanghai
  Asia/Singapore
  Asia/Taipei
  Asia/Tashkent
  Asia/Tbilisi
  Asia/Tehran
  Asia/Thimphu
  Asia/Tokyo
  Asia/Ulaanbaatar
  Asia/Urumqi
  Asia/Vientiane
  Asia/Yerevan
  Asia/Anadyr
  Asia/Irkutsk
  Asia/Kamchatka
  Asia/Krasnoyarsk
  Asia/Magadan
  Asia/Novosibirsk
  Asia/Omsk
  Asia/Sakhalin
  Asia/Vladivostok
  Asia/Yakutsk
  Asia/Yekaterinburg

=head3 Atlantic

  Atlantic/Cape_Verde
  Atlantic/St_Helena
  Atlantic/Azores
  Atlantic/Canary
  Atlantic/Faroe
  Atlantic/Madeira
  Atlantic/Reykjavik
  Atlantic/Bermuda
  Atlantic/South_Georgia
  Atlantic/Stanley

=head3 Australia

  Australia/Adelaide
  Australia/Brisbane
  Australia/Broken_Hill
  Australia/Currie
  Australia/Darwin
  Australia/Eucla
  Australia/Hobart
  Australia/Lindeman
  Australia/Lord_Howe
  Australia/Melbourne
  Australia/Perth
  Australia/Sydney

=head3 Europe

  Europe/Amsterdam
  Europe/Andorra
  Europe/Athens
  Europe/Belgrade
  Europe/Berlin
  Europe/Brussels
  Europe/Bucharest
  Europe/Budapest
  Europe/Chisinau
  Europe/Copenhagen
  Europe/Dublin
  Europe/Gibraltar
  Europe/Helsinki
  Europe/Istanbul
  Europe/Kaliningrad
  Europe/Kiev
  Europe/Lisbon
  Europe/London
  Europe/Luxembourg
  Europe/Madrid
  Europe/Malta
  Europe/Minsk
  Europe/Monaco
  Europe/Moscow
  Europe/Oslo
  Europe/Paris
  Europe/Prague
  Europe/Riga
  Europe/Rome
  Europe/Samara
  Europe/Simferopol
  Europe/Sofia
  Europe/Stockholm
  Europe/Tallinn
  Europe/Tirane
  Europe/Uzhgorod
  Europe/Vaduz
  Europe/Vienna
  Europe/Vilnius
  Europe/Volgograd
  Europe/Warsaw
  Europe/Zaporozhye
  Europe/Zurich

=head3 Indian

  Indian/Antananarivo
  Indian/Comoro
  Indian/Mahe
  Indian/Mauritius
  Indian/Mayotte
  Indian/Reunion
  Indian/Kerguelen
  Indian/Chagos
  Indian/Maldives
  Indian/Christmas
  Indian/Cocos

=head3 Pacific

  Pacific/Apia
  Pacific/Auckland
  Pacific/Chatham
  Pacific/Efate
  Pacific/Enderbury
  Pacific/Fakaofo
  Pacific/Fiji
  Pacific/Funafuti
  Pacific/Gambier
  Pacific/Guadalcanal
  Pacific/Guam
  Pacific/Johnston
  Pacific/Kiritimati
  Pacific/Kosrae
  Pacific/Kwajalein
  Pacific/Majuro
  Pacific/Marquesas
  Pacific/Midway
  Pacific/Nauru
  Pacific/Niue
  Pacific/Norfolk
  Pacific/Noumea
  Pacific/Pago_Pago
  Pacific/Palau
  Pacific/Pitcairn
  Pacific/Ponape
  Pacific/Port_Moresby
  Pacific/Rarotonga
  Pacific/Saipan
  Pacific/Tahiti
  Pacific/Tarawa
  Pacific/Tongatapu
  Pacific/Truk
  Pacific/Wake
  Pacific/Wallis
  Pacific/Honolulu
  Pacific/Easter
  Pacific/Galapagos

