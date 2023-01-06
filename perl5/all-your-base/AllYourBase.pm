package AllYourBase;
use strict;
use warnings;
use integer;

use Exporter qw/import/;
our @EXPORT_OK = qw/rebase/;
use List::Util qw/reduce/;

sub rebase {
    my ( $dig, $baseIn, $baseOut ) = @_;

    die "input base must be >= 2"  if $baseIn < 2;
    die "output base must be >= 2" if $baseOut < 2;

    do {
        die "all digits must satisfy 0 <= d < input base"
          if $_ < 0 || $_ >= $baseIn;
      }
      for $dig->@*;

    my $sum = reduce { $a * $baseIn + $b } 0, $dig->@*;

    return [0] if !$sum;

    my $ret = [];

    do {
        unshift $ret->@*, $sum % $baseOut;
        $sum /= $baseOut;
    } while $sum;

    $ret;

}

1;
