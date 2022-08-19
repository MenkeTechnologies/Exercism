package SumOfMultiples;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<sum_of_multiples>;
use List::Util 'sum';
sub sum_of_multiples {
    my ($input) = @_;
    my $sum = 0;
    for my $n (1 .. ($input->{limit} - 1)) {
        $sum += $n if grep {$_ != 0 and $n % $_ == 0} $input->{factors}->@*
    }
    $sum
}

1
