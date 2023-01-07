package Matrix;

use Moo;

has string => ( is => 'ro', );

sub row {
    my ( $self, $index ) = @_;
    my @rows = split( /\n/, $self->string );
    [ split( / /, $rows[ $index - 1 ] ) ];
}

sub column {
    my ( $self, $index ) = @_;
    my @rows = split( /\n/, $self->string );
    [
        map {
            my @row = split( / /, $rows[$_] );
            $row[ $index - 1 ]
        } 0 .. scalar @rows - 1
    ];
}
1;
