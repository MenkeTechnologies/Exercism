package Strain;
use strict;
use warnings;
use Exporter qw/import/;
our @EXPORT_OK = qw/keep discard/;

sub keep {
    my ( $lst, $f ) = @_;
    [ grep { $f->($_) } $lst->@* ];
}

sub discard {
    my ( $lst, $f ) = @_;
    keep $lst, sub { !$f->($_) }
}

1
