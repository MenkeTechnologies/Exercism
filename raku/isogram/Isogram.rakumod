unit module Isogram;

sub is-isogram ($s) is export {
    ($s.lc !~~ /(<[a..z]>).*$0/).Bool
}
