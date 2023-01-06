package SecretHandshake;
use strict;
use warnings;
use Exporter qw/import/;
our @EXPORT_OK = qw/handshake/;

use constant {
    dict =>
      { 1 => "wink", 2 => "double blink", 4 => "close your eyes", 8 => "jump" },
    RVS => 16
};

sub handshake {

    my $c = shift;
    return [] if $c =~ /\D/;

    my $words = [ map { dict->{$_} } grep { $_ & $c } sort keys dict->%* ];
    RVS & $c ? [ reverse $words->@* ] : $words;

}
1
