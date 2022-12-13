unit module Pangram;

sub is-pangram ($s) is export {
    $s.lc.contains(('a'..'z').all).so
}
