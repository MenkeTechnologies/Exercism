package AllYourBase;
use strict;
use warnings FATAL => 'all';
use integer;

sub convert_base {
    my ($dig, $baseIn, $baseOut) = @_;

    if ($baseIn <= 1 || $baseOut <= 1) {
        die 'base must be greater than 1'
    }

    my $sum = 0;
    my @out = ();

    for (@{$dig}) {

        if ($_ >= $baseIn) {
            die 'digit equal of greater than the base'
        }
        if ($_ < 0) {
            die 'negative digit not allowed'
        }

        $sum *= $baseIn;
        $sum += $_
    }

    if ($sum == 0) {
        return [ 0 ]
    }

    while ($sum > 0) {

        unshift @out, $sum % $baseOut;

        $sum /= $baseOut;
    }

    \@out

}

1;
