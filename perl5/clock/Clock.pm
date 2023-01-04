package Clock;
use Moo;

has hour   => ( is => 'rwp' );
has minute => ( is => 'rwp' );

sub BUILD {
    my $self = shift;
    my ( $hr, $min ) = ( $self->hour, $self->minute );
    $self->_set_hour(0);
    $self->_set_minute(0);
    $self->add_minutes( $hr * 60 + $min );
}

sub time {
    my $self = shift;
    sprintf "%02d:%02d", $self->hour, $self->minute;
}

sub add_minutes {
    my ( $self, $amount ) = @_;
    my $total_minutes = 60 * $self->hour + $self->minute + $amount;
    $total_minutes += 1440 while $total_minutes < 0;
    $self->_set_minute( $total_minutes % 60 );
    $self->_set_hour( int( $total_minutes / 60 ) % 24 );
    $self;
}

sub subtract_minutes {
    my ( $self, $amount ) = @_;
    $self->add_minutes( -$amount );
}
1;
