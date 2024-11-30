package Isogram;

use v5.40;

use Exporter qw<import>;
our @EXPORT_OK = qw<is_isogram>;

sub is_isogram ($s) {
    $s !~ /(\w).*\1/i
}

1;
