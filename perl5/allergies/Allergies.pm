package Allergies;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<allergic_to list_allergies>;

use constant dict => {
    eggs         => 1,
    peanuts      => 2,
    shellfish    => 4,
    strawberries => 8,
    tomatoes     => 16,
    chocolate    => 32,
    pollen       => 64,
    cats         => 128
};

sub allergic_to {
    my ( $item, $score ) = @_;
    dict->{$item} & $score;
}

sub list_allergies {
    my $score = shift;
    [ grep { allergic_to $_, $score } keys dict->%* ];
}

1
