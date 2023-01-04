package Luhn;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(is_luhn_valid);
use List::Util qw/sum/;

sub is_luhn_valid {
    $_ = shift;
    s@\s+@@g;
    my $cnt = 0;
    length >= 2 && !/\D/ && sum(
        map {
            $_ *= 2 if $cnt++ % 2 == 1;
            $_ > 9 ? $_ - 9 : $_;
        } split '',
        reverse
    ) % 10 == 0;
}

1;
