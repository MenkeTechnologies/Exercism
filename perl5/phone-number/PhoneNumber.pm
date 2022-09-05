package PhoneNumber;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(clean_number);

sub clean_number {
    ($_) = @_;
    die "letters not permitted\n"      if /[a-z]/i;
    die "punctuations not permitted\n" if /[^0-9() \.+-]/;
    s/\D//g;
    my $len = length;
    die "incorrect number of digits\n" if $len < 10;
    die "more than 11 digits\n"        if $len > 11;
    if ( $len == 11 ) {
        s@^1@@ or die "11 digits must start with 1\n";
    }
    my ( $area_code, $exchange_code ) = $_ =~ /^\d?(\d{3})(\d{3})\d{4}$/;
    die "area code cannot start with zero\n"     if $area_code     =~ /^0/;
    die "area code cannot start with one\n"      if $area_code     =~ /^1/;
    die "exchange code cannot start with zero\n" if $exchange_code =~ /^0/;
    die "exchange code cannot start with one\n"  if $exchange_code =~ /^1/;
    $_;
}

1
