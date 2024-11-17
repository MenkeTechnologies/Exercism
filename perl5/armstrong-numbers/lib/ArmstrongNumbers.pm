package ArmstrongNumbers;
use v5.40;
use bigint;
use Exporter qw<import>;
our @EXPORT_OK = qw<is_armstrong_number>;

sub is_armstrong_number ($number) {
    my @digits = map {0 + $_} split //, $number;
    my $sum = 0;
    $sum += $_ ** scalar @digits for @digits;
    $sum == $number;
}
