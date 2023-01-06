package LargestSeriesProduct;

use strict;
use warnings;
use List::Util qw/max product/;
use Exporter   qw/import/;
our @EXPORT_OK = qw/largest_product/;

sub largest_product {
    my ( $digits, $window ) = @_;
    my @digits = split //, $digits;
    die 'span must not be negative'               if $window < 0;
    die 'span must be smaller than string length' if $window > @digits;
    die 'digits input must only contain digits'   if $digits =~ /\D/;
    max map { product @digits[ $_ .. ( $_ + $window - 1 ) ] }
      0 .. @digits - $window;
}
1;
