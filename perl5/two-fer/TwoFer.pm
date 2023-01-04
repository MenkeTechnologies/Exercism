package TwoFer;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(two_fer);

sub two_fer {
    "One for @{[ shift || 'you' ]}, one for me.";
}

1
