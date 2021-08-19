package Proverb;
use strict;
use warnings FATAL => 'all';

sub proverb {
    my ($ref, $qualifier) = @_;

    my @phr = @{$ref};

    local $_ = '';

    $qualifier .= " " if length $qualifier;

    for (my $i = 0; $i < scalar(@phr) - 1; $i++) {
        $_ .= "For want of a $phr[$i] the $phr[$i + 1] was lost.\n";
    }

    $_ .= "And all for the want of a $qualifier$phr[0].";

}

1;
