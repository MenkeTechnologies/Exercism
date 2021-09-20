package Allergies;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<allergic_to list_allergies>;

my %m = ("eggs", 1, "peanuts", 2, "shellfish", 4, "strawberries", 8, "tomatoes", 16, "chocolate", 32, "pollen", 64, "cats", 128);

sub allergic_to {
    my ($input) = @_;
    my ($item, $score) = ($$input{item}, $$input{score});

    ($m{$item} & $score) > 0

}

sub list_allergies {
    my ($score) = @_;

    my @l;

    for (keys %m) {
        push @l, $_ if allergic_to {
            item  => $_,
            score => $score
        }
    }

    \@l
}

1
