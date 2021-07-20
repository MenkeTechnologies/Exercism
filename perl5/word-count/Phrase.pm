package Phrase;

use strict;
use warnings FATAL => 'all';
use Exporter 'import';
our @EXPORT_OK = qw(word_count);


sub word_count {
    my ($words) = @_;
    my %wc;

    $words =~ s/(\W)/ /g;

    for (split /\s+/, lc $words) {
        ++$wc{$_}
    }

    return \%wc;

}

1;
