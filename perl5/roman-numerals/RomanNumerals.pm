package RomanNumerals;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(to_roman);

use constant dict => [
    [ 1000, "M" ], [ 900, "CM" ], [ 500, "D" ], [ 400, "CD" ], [ 100, "C" ], [ 90, "XC" ], [ 50, "L" ],
    [ 40, "XL" ], [ 10, "X" ], [ 9, "IX" ], [ 5, "V" ], [ 4, "IV" ], [ 1, "I" ]
];

sub to_roman {
    my $num = shift;
    join "", map {
        my $val = $_->[0];
        my $sym = $_->[1];
        my $r = $sym x int($num / $val);
        $num %= $val;
        $r
    } dict->@*;
}
1;

