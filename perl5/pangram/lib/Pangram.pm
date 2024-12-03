package Pangram;
use v5.40;

use List::Util qw{all};

use Exporter qw<import>;
our @EXPORT_OK = qw<is_pangram>;

sub is_pangram ($s) {
    all { $s =~ /$_/i } 'a' .. 'z';
}

