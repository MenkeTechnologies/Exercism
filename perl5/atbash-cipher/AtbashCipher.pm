package AtbashCipher;
use strict;
use warnings;
use Exporter qw/import/;
our @EXPORT_OK = qw/encode_atbash decode_atbash/;

use constant letters => [ 'a' .. 'z' ];

my %lookup;
@lookup{ letters->@* } = reverse letters->@*;

sub encode_atbash { decode_atbash(shift) =~ s@(.{5})(?=.)@$1 @gr; }

sub decode_atbash {
    join '', map { /\d/ ? $_ : $lookup{ (lc) } // '' } split //, shift;
}

1
