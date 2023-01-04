package Proverb;
use strict;
use warnings FATAL => 'all';

sub proverb {
    my ( $ref, $qualifier ) = @_;

    my @phr = $ref->@*;

    $qualifier .= " " if length $qualifier;

    my $s = join "",
      map { "For want of a $phr[$_] the $phr[$_ + 1] was lost.\n" }
      0 .. $#phr - 1;

    $s .= "And all for the want of a $qualifier$phr[0].";

}

1;
