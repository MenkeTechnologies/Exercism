unit module Grains;

sub grains-on-square ($n) is export {
    die "square must be between 1 and 64" if $n < 1 or $n > 64;
    2 ** ($n - 1)
}

sub total-grains is export {
    (1..64).map(&grains-on-square).sum
}
