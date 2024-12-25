package ArmstrongNumbers;
use v5.40;
use bigint;
use List::Util qw<sum0>;

use Exporter qw<import>;
our @EXPORT_OK = qw<is_armstrong_number>;

sub is_armstrong_number ($number) {
    my @digits = map {0 + $_} split //, $number;
    $number == sum0 map { $_ ** scalar @digits } @digits;
}
