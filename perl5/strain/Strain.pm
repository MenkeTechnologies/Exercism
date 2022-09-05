package Strain;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<keep discard>;

sub keep {
    my ( $lst, $f ) = @_;
    my @keep;
    do { push @keep => $_ if &$f($_) }
      for @$lst;
    \@keep;
}

sub discard {
    my ( $lst, $f ) = @_;
    keep $lst, sub { !&$f($_) }
}

1
