package Squares;
use strict;
use warnings;

sub new {
    my ($class, $cnt) = @_;

    bless {
        cnt => $cnt
    }, $class
}

sub sum_of_squares {
    my ($self) = @_;
    my $sum = 0;
    $sum += $_ ** 2 for 1 .. $self->{cnt};
    $sum

}

sub square_of_sum {
    my ($self) = @_;
    my $sum = 0;
    $sum += $_ for 1 .. $self->{cnt};
    $sum ** 2
}

sub difference {
    my ($self) = @_;
    $self->square_of_sum - $self->sum_of_squares
}

1;
