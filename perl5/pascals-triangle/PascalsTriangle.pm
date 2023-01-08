package PascalsTriangle;
use strict;
use warnings;
use Exporter qw/import/;
our @EXPORT_OK = qw/pascal_rows/;

sub pascal_rows {
    my $rows     = shift;
    my $triangle = [];
    return ''  if !$rows;
    return '1' if $rows == 1;
    push $triangle->@*, [1];
    for my $r ( 2 .. $rows ) {
        push $triangle->@*, [
            map {
                my $p1 = $_ == 1  ? 0 : $triangle->[ $r - 2 ][ $_ - 2 ];
                my $p2 = $_ == $r ? 0 : $triangle->[ $r - 2 ][ $_ - 1 ];
                $p1 + $p2;
            } 1 .. $r
        ];
    }
    join "\n", map { join ' ', $_->@* } $triangle->@*;
}
1;
