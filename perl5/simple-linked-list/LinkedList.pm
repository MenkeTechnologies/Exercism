package LinkedList;
use strict;
use warnings;

sub new {
    my ($class, $data, $next) = @_;
    bless {
        data => $data,
        next => $next,
    }, $class;
}

sub from_array {
    my ($self, $values) = @_;
    my $prev;
    $prev = $self->new($_, $prev) for reverse $values->@*;
    $prev;
}

sub to_array {
    my $self = shift;
    my $ref;
    do {
        push $ref->@*, $self->data();
    } while ($self = $self->next());
    $ref
}

sub reverse {
    my $self = shift;
    my $head;
    do {
        $head = (ref $self)->new($self->data(), $head);
    } while ($self = $self->next());
    $head;
}

sub data { shift->{data} }
sub next { shift->{next} }

1
