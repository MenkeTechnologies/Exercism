package Raindrops;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(raindrop);

sub raindrop {
    my ($number) = @_;

    my $res = "";

    if ($number % 3 == 0) {
        $res .= "Pling";
    }
    if ($number % 5 == 0) {
        $res .= "Plang";
    }
    if ($number % 7 == 0) {
        $res .= "Plong";
    }
    if ($res eq "") {
        $res = "$number";
    }

    return $res;
}

1;
