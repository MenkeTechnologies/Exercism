package PhoneNumber;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(clean_number);

sub clean_number {
    my ($num) = @_;
    die "letters not permitted\n" if $num =~ /[a-z]/i;
    die "punctuations not permitted\n" if $num =~ /[^0-9() \.+-]/;
    $num =~ s/\D//g;
    my $len = length($num);
    die "incorrect number of digits\n" if $len < 10;
    die "more than 11 digits\n" if $len > 11;
    if ($len == 11) {
        $num =~ s/^1// or die "11 digits must start with 1\n";
    }
    my ($_cc, $area_code, $exchange_code, $station_code) = $num =~ /^(\d?)(\d{3})(\d{3})(\d{4})$/;
    die "area code cannot start with zero\n" if $area_code =~ /^0/;
    die "area code cannot start with one\n" if $area_code =~ /^1/;
    die "exchange code cannot start with zero\n" if $exchange_code =~ /^0/;
    die "exchange code cannot start with one\n" if $exchange_code =~ /^1/;
    $num
}


1
