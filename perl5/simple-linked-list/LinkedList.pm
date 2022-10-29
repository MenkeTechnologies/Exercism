package LinkedList;
use strict;
use warnings;

sub new {
    my ( $class, $data, $next ) = @_;
    bless {
        data => $data,
        next => $next,
    }, $class;
}

sub from_array {
    my ( $self, $values ) = @_;
    my $prev;
    $prev = $self->new( $_, $prev ) for reverse @$values;
    $prev;
}

sub to_array {
    my ($self) = @_; 
    my @values = ();
    do {
        push @values, $self->data();
    } while ( $self = $self->next() );
    \@values;
}

sub reverse {
    my ($self) = @_;
    my $head;
    do {
        $head = ( ref $self )->new( $self->data(), $head );
    } while ( $self = $self->next() );
    $head;
}

sub data {
    my ($self) = @_;
    $self->{data};
}

sub next {
    my ($self) = @_;
    $self->{next};
}
1
