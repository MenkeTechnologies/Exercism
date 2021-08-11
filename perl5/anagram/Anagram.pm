package Anagram;
use strict;
use warnings FATAL => 'all';
our @EXPORT_OK = qw<match>;

sub match {
    my ($phrase, @words) = @_;
    my $sortedPhrase = join "", sort split //, lc $phrase;
    my @ana;

    for (@words) {
        my $sortedCand = join "", sort split //, lc;

        if ($_ ne $phrase && $sortedCand eq $sortedPhrase) {
            push @ana, $_;
        }

    }
    return \@ana;
}

1;
