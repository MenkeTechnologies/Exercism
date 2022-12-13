unit module BinarySearch;

sub binary-search (:@array, :$value) is export {
    my $lo = 0;
    my $hi = @array.end;
    my $mid;
    while ($lo <= $hi) {
        $mid = ($lo + $hi) div 2;
        if ($value > @array[$mid]) {
            $lo = $mid + 1;
        } elsif ($value < @array[$mid]) {
            $hi = $mid - 1;
        } else {
            return $mid;
        }
    }

    die "could not find $value";
}

