package Triangle;
use strict;
use warnings FATAL => 'all';


sub kind {
    my ($a, $b, $c) = @_;

    do {die "TriangleError" if $_ <= 0 or $a + $b <= $c or $a + $c <= $b or $b + $c <= $a} for @_;

    return "equilateral" if $a == $b and $b == $c;

    return "isosceles" if $a == $b or $b == $c or $a == $c;

    "scalene"

}

1;
