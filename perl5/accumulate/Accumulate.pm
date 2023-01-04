package Accumulate;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw<accumulate>;

sub accumulate {
    my ($lst, $f) = @_;
    [ map {$f->($_)} $lst->@* ]
}

1;
