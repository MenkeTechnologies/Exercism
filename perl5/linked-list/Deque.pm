package Deque;
use strict;
use warnings;

sub new {
    my $self = bless {} => shift;
    $self->{tail} = undef;
    $self->{head} = undef;

    # cause need to check if empty
    $self->{total} = 0;
    return $self;
}

sub push : method {
    my ( $self, $value ) = @_;
    my $node = {
        value => $value,
        next  => $self->{head},
        prev  => $self->{tail}
    };

    # prev tail->next set to new node
    $self->{tail}->{next} = $node;

    # set tail to new node
    $self->{tail} = $node if $self->{tail};

    # if empty
    $self->{tail} = $node unless $self->{total};
    $self->{head} = $node unless $self->{total};
    $self->{total}++;
}

sub pop : method {
    my $self = shift;

    my $node = $self->{tail};
    $self->{tail} = $self->{tail}->{prev};
    $self->{total}--;
    return $node->{value};
}

sub unshift : method {
    my ( $self, $value ) = @_;
    my $node = {
        value => $value,
        next  => $self->{head},
        prev  => $self->{tail}
    };
    $self->{head}->{prev} = $node;
    $self->{head} = $node if $self->{head};

    $self->{tail} = $node unless $self->{total};
    $self->{head} = $node unless $self->{total};
    $self->{total}++;
}

sub shift {
    my $self = shift;

    my $node = $self->{head};
    $self->{head} = $self->{head}->{next};
    $self->{total}--;
    return $node->{value};
}
1;
