package RobotName;
use strict;
use warnings;

our @letters = ('A'..'Z');

sub irand {
  int rand(10)
}
sub crand {
  $letters[int rand(26)]
}
sub new {
  my $class = shift;
  bless {},$class
}
sub name {
  my $self = shift;
  if(not defined $self->{name}) {
    $self->reset_name;
  }
  $self->{name};
}
sub reset_name {
  my $self = shift;
  $self->{name} = crand.crand.irand.irand.irand;
}
1;
