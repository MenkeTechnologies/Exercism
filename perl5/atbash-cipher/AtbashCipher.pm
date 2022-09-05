package AtbashCipher;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<encode_atbash decode_atbash>;

my @letters = 'a' .. 'z';

my %lookup;
@lookup{@letters} = reverse @letters;

sub encode_atbash {
    my ($s) = @_;
    decode_atbash($s) =~ s@(.{5})(?=.)@$1 @gr;
}

sub decode_atbash {
    my ($s) = @_;
    join '', map { $lookup{ lc $_ } // ( /\d/ ? $_ : '' ) } split //, $s;
}

1
