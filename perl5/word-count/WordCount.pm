package WordCount;

use strict;
use warnings;
use Exporter qw/import/;
our @EXPORT_OK = qw/count_words/;

sub count_words {
    my @words = shift =~ m/\w+(?:'\w+)?/g;
    my $dict;
    map { ++$dict->{$_} } map { lc } @words;
    $dict;
}

1;
