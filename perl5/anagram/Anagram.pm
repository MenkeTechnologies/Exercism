package Anagram;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw<match_anagrams>;

sub match_anagrams {
    my $lcTarget = lc shift;
    my $cands = shift;
    my $sortedTarget = join "", sort split //, $lcTarget;
    [ grep {lc ne $lcTarget && (join "", sort split //, lc) eq $sortedTarget} @$cands ];
}

1;
