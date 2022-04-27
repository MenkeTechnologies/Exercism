package Queens;
use strict;
use warnings;

sub new {
  my ( $class, %data ) = @_;

  return undef;
}

sub white {
  my ($self) = @_;
  
  return $self->white;
}

sub black {
  my ($self) = @_;
  
  return $self->black;
}

sub to_string {
  my ($self) = @_;
  
  return undef;
}

sub can_attack {
  my ($self) = @_;
  my $dx = abs($self->{white}->[0] - $self->{black}->[0]);
  my $dy = abs($self->{white}->[1] - $self->{black}->[1]);

  return $dx == 0 || $dy == 0 || $dx == $dy;
}

1

