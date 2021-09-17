package NucleotideCount;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(count_nucleotides);

sub count_nucleotides {
    my ($strand) = @_;
    my %map = ("A", 0, "G", 0, "C", 0, "T", 0);

    for (split //, $strand) {
        die "Invalid nucleotide in strand" if !/[AGCT]/;
        ++$map{$_}
    }

    \%map
}

1
