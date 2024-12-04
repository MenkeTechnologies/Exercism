package RotationalCipher;

use v5.40;
use Exporter qw<import>;
our @EXPORT_OK = qw<caesar_cipher>;

sub caesar_cipher ( $s, $shift_key ) {
    join '', map {
            /[A-Z]/ ? chr((ord() - ord('A') + $shift_key) % 26 + ord('A')) :
            /[a-z]/ ? chr((ord() - ord('a') + $shift_key) % 26 + ord('a')) :
            $_
        } split //, $s;
}

1;
