package Queens;
use strict;
use warnings;

sub new {
    my ($class, %data) = @_;
    $data{white} //= [ 0, 3 ];
    $data{black} //= [ 7, 3 ];

    if ($data{white}->[0] == $data{black}->[0] || $data{white}->[1] == $data{black}->[1] || grep {$_ < 0 || $_ > 7} $data{white}->@*, $data{black}->@*) {
        die("ArgumentError");
    }

    bless \%data, $class
}

sub white {
    shift->{white};
}

sub black {
   shift->{black};
}

sub to_string {
    my ($self) = @_;

    return undef;
}

sub can_attack {
    my ($self) = @_;
    my $dx = abs($self->{white}->[0] - $self->{black}->[0]);
    my $dy = abs($self->{white}->[1] - $self->{black}->[1]);

    $dx == 0 || $dy == 0 || $dx == $dy;
}

1

