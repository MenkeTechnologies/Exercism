package Raindrops;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(raindrop);

use constant dict => { 3 => "Pling", 5 => "Plang", 7 => "Plong" };

sub raindrop {
    my $n = shift;
    ( join "", map { dict->{$_} } grep { $n % $_ == 0 } sort keys dict->%* )
      || $n;
}

1;
