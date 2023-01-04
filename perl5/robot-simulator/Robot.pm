package Robot;
use strict;
use warnings;
no warnings 'experimental';
use feature 'switch';

my @bearings = ( 'north', 'east', 'south', 'west' );
sub new         { bless { position => [ 0, 0 ], bearing => 'north' }, shift }
sub bearing     { shift->{bearing} }
sub coordinates { shift->{position} }

sub orient {
    my ( $self, $direction ) = @_;
    die 'ArgumentError' if not grep { /$direction/ } @bearings;
    $self->{bearing} = $direction;
}

sub turn {
    my ( $self, $dir ) = @_;
    my $amt = $dir eq 'r' ? 1 : -1;
    my $i =
      List::Util::first { $bearings[$_] eq $self->{bearing} } 0 .. $#bearings;
    $bearings[ ( $i + $amt ) % 4 ];
}

sub turn_right {
    my $self = shift;
    $self->{bearing} = $self->turn('r');
}

sub turn_left {
    my $self = shift;
    $self->{bearing} = $self->turn('l');
}

sub at {
    my ( $self, $x, $y ) = @_;
    $self->{position} = [ $x, $y ];
}

sub advance {
    my $self = shift;
    given ( $self->{bearing} ) {
        $self->{position}[0]++ when 'east';
        $self->{position}[0]-- when 'west';
        $self->{position}[1]++ when 'north';
        $self->{position}[1]-- when 'south';
    }
}

package Simulator;
my %actions = ( L => 'turn_left', R => 'turn_right', A => 'advance' );

sub new { bless {}, shift }

sub place {
    my ( $self, $robot, $options ) = @_;
    $robot->at( $options->{x}, $options->{y} );
    $robot->orient( $options->{direction} );
}

sub evaluate {
    my ( $self, $robot, $cmds ) = @_;
    $robot->$_ for $self->instructions($cmds)->@*;
}

sub instructions {
    my ( $self, $cmds ) = @_;
    [ map { $actions{$_} } split //, $cmds ];
}
1;
