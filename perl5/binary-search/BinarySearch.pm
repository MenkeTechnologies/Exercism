package BinarySearch;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<binary_search>;

sub binary_search {
    my ($input) = @_;
    my @array = $input->{array}->@*;
    my $value = $input->{value};
    my ($l, $r) = (0, $#array);
    while ( $l <= $r ) {
        my $mid = int( ( $l + $r ) / 2 );
        if ($value < $array[$mid]) {
            $r = $mid - 1
        }
        elsif ($value > $array[$mid] ) {
            $l = $mid + 1
        }
        else {
            return $mid
        }
    }
    die 'value not in array';
}
1
