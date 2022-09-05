package SecretHandshake;
use strict;
use warnings FATAL => 'all';

sub new {
    my ( $class, $cnt ) = @_;

    bless { cnt => $cnt }, $class;
}

my %map = ( 1, "wink", 2, "double blink", 4, "close your eyes", 8, "jump" );

use constant RVS => 16;

sub commands {
    my ($self) = @_;

    my $c = $self->{cnt};

    return [] if $c !~ /^\d+$/;

    my @l = ();

    for ( sort keys %map ) {
        push @l, $map{$_} if $_ & $c;
    }

    @l = reverse @l if RVS & $c;

    \@l;

}
1
