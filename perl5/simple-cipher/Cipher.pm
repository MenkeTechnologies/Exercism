package Cipher;
use strict;
use warnings;

use constant { LC_A => 97, ALPHA => 26 };

sub new {
    my ( $class, $key ) = @_;
    die 'ArgumentError'
      if defined $key and ( $key =~ /[A-Z0-9]/ or !length $key );
    bless { key => $key }, $class;
}

sub process {
    my ( $self, $in, $decode ) = @_;
    return $in if !$self->{key};
    ( $in = lc $in ) =~ s@[^a-z]@@g;

    join "", map {
        my $i = $_;
        my ( $tr, $k ) =
          map { ord( substr $_, $i, 1 ) % LC_A } ( $in, $self->{key} );
        $k *= -1 if $decode;
        chr( LC_A + ( ( $tr + $k ) % ALPHA ) );
    } 0 .. length($in) - 1;
}

sub encode {
    my ( $self, $plaintext ) = @_;
    $self->process( $plaintext, 0 );
}

sub decode {
    my ( $self, $cipher ) = @_;
    $self->process( $cipher, 1 );
}
1;
