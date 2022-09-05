package Accumulate;
use strict;
use warnings FATAL => 'all';

sub accumulate {
    my ( $lst, $fn ) = @_;
    my @res = ();

    push @res, &{$fn}($_) for @{$lst};

    \@res;

}

1;
