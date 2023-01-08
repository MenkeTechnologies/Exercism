package Minesweeper;
use strict;
use warnings;
use Exporter qw/import/;
our @EXPORT_OK = qw/annotate/;

sub annotate {
    my @minefield = map { [ split // ] } shift->@*;
    return [] if !@minefield;
    my $rows = $#minefield;
    my $cols = $#{ $minefield[0] };
    for my $r ( 0 .. $rows ) {
        for my $c ( 0 .. $cols ) {
            next if $minefield[$r][$c] eq '*';
            my $n = 0;
            $minefield[$r][ $c - 1 ] eq '*'       and ++$n if $c > 0;
            $minefield[$r][ $c + 1 ] eq '*'       and ++$n if $c < $cols;
            $minefield[ $r - 1 ][$c] eq '*'       and ++$n if $r > 0;
            $minefield[ $r - 1 ][ $c - 1 ] eq '*' and ++$n if $r > 0 && $c > 0;
            $minefield[ $r - 1 ][ $c + 1 ] eq '*' and ++$n
              if $r > 0 && $c < $cols;
            $minefield[ $r + 1 ][$c] eq '*' and ++$n if $r < $rows;
            $minefield[ $r + 1 ][ $c - 1 ] eq '*' and ++$n
              if $r < $rows && $c > 0;
            $minefield[ $r + 1 ][ $c + 1 ] eq '*' and ++$n
              if $r < $rows && $c < $cols;
            $minefield[$r][$c] = $n if $n > 0;
        }
    }
    [ map { join '', $_->@* } @minefield ];
}
1;
