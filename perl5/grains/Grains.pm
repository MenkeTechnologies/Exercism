package Grains;
use strict;
use warnings;
use bignum;
use Exporter   qw/import/;
use List::Util qw/sum/;
our @EXPORT_OK = qw/grains_on_square total_grains/;

sub grains_on_square {
    my $n = shift;
    die "square must be between 1 and 64" if $n < 1 or $n > 64;
    2**( $n - 1 );
}

sub total_grains {
    sum map { grains_on_square $_} 1 .. 64;
}

1;
