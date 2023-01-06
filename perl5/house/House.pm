package House;
use strict;
use warnings;
use Exporter qw/import/;
our @EXPORT_OK = qw/recite/;
use constant parts => [
    [ 'house',                            'Jack built' ],
    [ 'malt',                             'lay in' ],
    [ 'rat',                              'ate' ],
    [ 'cat',                              'killed' ],
    [ 'dog',                              'worried' ],
    [ 'cow with the crumpled horn',       'tossed' ],
    [ 'maiden all forlorn',               'milked' ],
    [ 'man all tattered and torn',        'kissed' ],
    [ 'priest all shaven and shorn',      'married' ],
    [ 'rooster',                          'crowed in the morn', 'woke' ],
    [ 'farmer sowing his corn',           'kept' ],
    [ 'horse and the hound and the horn', 'belonged to' ],
];

sub recite {
    my ( $start, $end ) = @_;
    join "\n", map {
"This is the @{[ join' the ', map {join ' that ', $_->@*} reverse @{(parts)}[0 .. $_] ]}."
    } $start - 1 .. $end - 1;
}
1;
