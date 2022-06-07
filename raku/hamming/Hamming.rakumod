unit module Hamming;

sub hamming-distance ( $s1, $s2 ) is export {
    die "strands must be of equal length" if $s1.chars != $s2.chars;
    ($s1.comb Z $s2.comb).grep(-> (\a, \b) {a ne b}).elems

}
