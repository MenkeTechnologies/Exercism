package Strain;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<keep discard>;

sub keep {
    my ($lst, $f) = @_;
    [ grep {$_ if $f->($_)} $lst->@* ];
}

sub discard {
    my ($lst, $f) = @_;
    keep $lst, sub {!$f->($_)}
}

1
