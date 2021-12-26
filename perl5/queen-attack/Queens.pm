package Queens;
use strict;
use warnings FATAL => 'all';

sub new {
    my ($class, %data) = @_;
    bless \%data, $class

}

1;
