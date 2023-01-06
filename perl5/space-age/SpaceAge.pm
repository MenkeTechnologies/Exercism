package SpaceAge;
use strict;
use warnings;
use Exporter qw/import/;
our @EXPORT_OK = qw/age_on_planet/;

use constant {
    SPY            => 31_557_600,
    RELATIVE_YEARS => {
        mercury => 0.2408467,
        venus   => 0.61519726,
        earth   => 1.0,
        mars    => 1.8808158,
        jupiter => 11.862615,
        saturn  => 29.447498,
        uranus  => 84.016846,
        neptune => 164.79132,
    }
};

sub age_on_planet {
    my ( $planet, $seconds ) = shift->@{ 'planet', 'seconds' };
    sprintf "%.2f", $seconds / SPY / RELATIVE_YEARS->{ lc $planet };
}
1;
