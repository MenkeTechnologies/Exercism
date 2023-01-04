package SumOfMultiples;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<sum_of_multiples>;
use List::Util 'sum';

sub sum_of_multiples {
    my $input = shift;

    (sum grep { my $n = $_;
        grep {$_ != 0 and $n % $_ == 0} $input->{factors}->@*
    } 1 .. $input->{limit} - 1) // 0;
}

1
