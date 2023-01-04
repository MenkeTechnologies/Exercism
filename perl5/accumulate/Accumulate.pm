package Accumulate;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw<accumulate>;

sub accumulate {
    my ($lst, $fn) = @_;
    [ map {&$fn($_)} @$lst ]
}

1;
