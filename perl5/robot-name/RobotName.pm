package RobotName;
use strict;
use warnings;

use constant letters => [ 'A' .. 'Z' ];

sub irand { int rand 10; }

sub crand { letters->[ int rand 26 ]; }

sub new { bless {}, shift; }

sub name {
    my $self = shift;
    $self->reset_name if !$self->{name};
    $self->{name};
}

sub reset_name {
    shift->{name} = crand . crand . irand . irand . irand;
}
1;
