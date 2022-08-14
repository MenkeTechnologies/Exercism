package AtbashCipher;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<encode_atbash decode_atbash>;

my @letters = map { chr($_) } (ord('a')..ord('z'));

my %lookup;
@lookup{@letters} = reverse @letters;

sub encode_atbash {
  my ($s) = @_;
  return decode_atbash($s) =~ s/(?<=\G\w{5})(?=\w)/ /gr;
}
sub decode_atbash {
  my ($s) = @_;
  return join '', map { $lookup{lc($_)} // (/\d/ ? $_ : '') } split //, $s;
}
1;

