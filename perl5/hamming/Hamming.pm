package Hamming;
use strict;
use warnings;
use Exporter qw/import/;
our @EXPORT_OK = qw/hamming_distance/;

sub hamming_distance {
    my ( $s1, $s2 ) = @_;
    die "left and right strands must be of equal length"
      if length $s1 != length $s2;
    scalar grep { substr( $s1, $_, 1 ) ne substr( $s2, $_, 1 ) }
      0 .. length($s1) - 1;
}

1;
