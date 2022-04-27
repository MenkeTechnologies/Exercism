package RNA;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(to_rna);

{
    my %m = ("G", "C", "C", "G", "T", "A", "A", "U");

    sub transcribe {
        my ($base) = @_;
        $m{$base}

    }
}

sub to_rna {
    my ($dna) = @_;

    my $rna = "";

    $rna .= transcribe $_ for split //, $dna;

    $rna
}

1
