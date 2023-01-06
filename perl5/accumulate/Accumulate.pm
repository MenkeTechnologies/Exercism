package Accumulate;
use strict;
use warnings;
use Exporter qw/import/;
our @EXPORT_OK = qw/accumulate/;

sub accumulate {
    my ( $lst, $f ) = @_;
    [ map { $f->($_) } $lst->@* ];
}

1;
