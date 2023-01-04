package SecretHandshake;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<handshake>;

use constant dict => { 1 => "wink", 2 => "double blink", 4 => "close your eyes", 8 => "jump" };
use constant RVS => 16;

sub handshake {

    my $c = shift;
    return [] if $c =~ /\D/;

    my $aref = [ map {dict->{$_}} grep {$_ & $c} sort keys dict->%* ];
    RVS & $c ? [ reverse $aref->@* ] : $aref

}
1
