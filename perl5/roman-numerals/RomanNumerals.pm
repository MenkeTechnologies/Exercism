package RomanNumerals;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(to_roman);

my @rn = (
    [1000, "M"],
    [900, "CM"],
    [500, "D"],
    [400, "CD"],
    [100, "C"],
    [90, "XC"],
    [50, "L"],
    [40, "XL"],
    [10, "X"],
    [9, "IX"],
    [5, "V"],
    [4, "IV"],
    [1, "I"]
);
sub to_roman {
    my ($num) = @_;
    my $r = "";
    for my $i (0..$#rn){
        my $val = $rn[$i]->[0];
        my $let = $rn[$i]->[1];
        $r .= $let x int ($num / $val);
        $num %= $val;
    }
    $r
}
1;

