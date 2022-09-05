package Grains;
use strict;
use warnings;
use bignum;
use Exporter 'import';
our @EXPORT_OK = qw(grains_on_square total_grains);

sub grains_on_square {
    my ($square) = @_;
    if ( $square < 1 or $square > 64 ) {
        die "square must be between 1 and 64";
    }
    return 2**( $square - 1 );
}

sub total_grains {
    return 1 * ( 1 - 2**64 ) / ( 1 - 2 );
}

1;
