package CryptoSquare;
use strict;
use warnings;
use POSIX;
use Exporter qw\import\;
our @EXPORT = qw\cipher\;

sub getch {
    my ( $s, $cols, $x, $y ) = @_;
    my $idx = $x + $y * $cols;
    return ' ' if $idx >= length $s;
    substr $s, $idx, 1;
}

sub cipher {
    my $s  = shift;
    my $lc = lc join '', $s =~ /\w/g;
    return '' unless length $lc;
    my $cols = ceil sqrt length($lc);
    my $rows = ceil length($lc) / $cols;
    join ' ', map {
        my $col = $_;
        join '', map { getch $lc, $cols, $col, $_ } 0 .. $rows - 1
    } 0 .. $cols - 1;
}
1;
