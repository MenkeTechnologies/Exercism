unit module Pangram;

sub is-pangram ($string) is export {
    $string.lc.contains(('a'..'z').all).so
}
