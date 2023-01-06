package BottleSong;

use strict;
use warnings;
use Exporter qw/import/;
our @EXPORT_OK = qw/sing/;
use constant numbers => {
    1  => 'one',
    2  => 'two',
    3  => 'three',
    4  => 'four',
    5  => 'five',
    6  => 'six',
    7  => 'seven',
    8  => 'eight',
    9  => 'nine',
    10 => 'ten',
};

sub sing {
    my ( $bottles, $verses ) = @_;
    join "\n\n", map {
        ucfirst(
"@{[numbers->{$bottles}]} green bottle@{[$bottles > 1 ? 's' : '']} hanging on the wall,\n"
          ) x 2
          . "And if one green bottle should accidentally fall,\nThere'll be "
          . ( numbers->{ --$bottles } || 'no' )
          . " green bottle@{[$bottles == 1 ? '' : 's']} hanging on the wall.";
    } 1 .. $verses;
}
1;
