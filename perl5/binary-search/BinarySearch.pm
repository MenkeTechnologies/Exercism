package BinarySearch;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<binary_search>;

sub binary_search {
    my ($array, $search) = @_;
    my @lst = $array->@*;
    my ($lo, $hi) = (0, $#lst);
    while ($lo <= $hi) {
        my $mid = int(($lo + $hi) / 2);
        if ($search < $lst[$mid]) {
            $hi = $mid - 1;
        }
        elsif ($search > $lst[$mid]) {
            $lo = $mid + 1;
        }
        else {
            return $mid;
        }
    }
    die 'value not in array';
}
1
