package WordCount;

use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(count_words);

sub count_words {
    my $s     = shift;
    my @words = $s =~ m/\w+(?:'\w+)?/g;
    my $dict;
    map { ++$dict->{$_} } map { lc } @words;
    $dict;
}

1;
