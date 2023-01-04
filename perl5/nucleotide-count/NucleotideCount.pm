package NucleotideCount;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(count_nucleotides);

sub count_nucleotides {
    my $strand = shift;
    my $cnts = { A => 0, G => 0, C => 0, T => 0 };

    map {/[AGCT]/ ? ++$cnts->{$_} : die "Invalid nucleotide in strand"} split //, $strand;

    $cnts
}

1
