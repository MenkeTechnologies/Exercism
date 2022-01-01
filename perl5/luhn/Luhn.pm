package Luhn;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(is_luhn_valid);

sub is_luhn_valid {
    my ($input) = @_;

    $input =~ s@\s+@@g;

    return 0 if length($input) < 2 || $input =~ /\D/;

    my $cnt = 0;
    my $sum = 0;

    do {
        $_ *= 2 if $cnt++ % 2 == 1;
        $sum += $_ > 9 ? $_ - 9 : $_
    } for split('', reverse($input));

    $sum % 10 == 0
}

1;
