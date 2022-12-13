unit module Isogram;

sub is-isogram ($phrase) is export {
    ($phrase.lc !~~ /(<[a..z]>).*$0/).Bool
}
