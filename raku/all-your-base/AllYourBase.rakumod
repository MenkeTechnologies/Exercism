unit module AllYourBase;
sub convert-base (:%bases!, :@digits! is copy) is export {
    die "in/out base must be >= 2" if %bases<to> < 2 or %bases<from> < 2;
    die "all digits must satisfy 0 <= d < input base" if @digits.grep( { $_ < 0 or $_ >= %bases<from> } ).elems;
    my $sum = from-base %bases<from>, @digits;
    return (0,) if $sum == 0;
    to-base %bases<to>, $sum;
}
sub to-base($base, $value is copy) {
    my @digits;
    while $value {
        @digits.unshift( $value mod $base );
        $value = $value div $base;
    }
    @digits.List;
}
sub from-base($base, @digits) {
    my $acc = 0;
    $acc = $acc * $base + $_ for @digits;
    $acc;
}
