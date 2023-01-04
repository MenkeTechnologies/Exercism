package DifferenceOfSquares;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<square_of_sum sum_of_squares difference_of_squares>;
use List::Util 'sum';

sub square_of_sum {
    sum(1 .. shift) ** 2
}
sub sum_of_squares {
    sum(map {$_ ** 2} 1 .. shift)
}
sub difference_of_squares {
    my $number = shift;
    square_of_sum($number) - sum_of_squares($number)
}
1;
