package SpaceAge;
use strict;
use warnings FATAL => 'all';

my %earth_days = (
    earth   => 1,
    mercury => 0.2408467,
    venus   => 0.61519726,
    mars    => 1.8808158,
    jupiter => 11.862615,
    saturn  => 29.447498,
    uranus  => 84.016846,
    neptune => 164.79132,
);

sub new {
    my ($class, $_seconds) = @_;
    bless { _seconds => $_seconds }, $class
}

sub seconds {
    my ($self) = @_;
    return $self->{_seconds};
}

sub form {
    my ($sec) = @_;
    sprintf("%.2f", $sec)

}
sub earth {
    my ($self) = @_;

    $self->{_seconds} / 31557600
}

sub on_earth {
    my ($self) = @_;
    form $self->earth
}

sub on_mercury {
    my ($self) = @_;
    form $self->earth / $earth_days{mercury}
}

sub on_venus {
    my ($self) = @_;
    form $self->earth / $earth_days{venus}
}

sub on_mars {
    my ($self) = @_;
    form $self->earth / $earth_days{mars}
}

sub on_jupiter {
    my ($self) = @_;
    form $self->earth / $earth_days{jupiter}
}

sub on_saturn {
    my ($self) = @_;
    form $self->earth / $earth_days{saturn}
}

sub on_uranus {
    my ($self) = @_;
    form $self->earth / $earth_days{uranus}
}

sub on_neptune {
    my ($self) = @_;
    form $self->earth / $earth_days{neptune}
}

1;
