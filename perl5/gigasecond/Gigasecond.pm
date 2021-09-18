package Gigasecond;
use strict;
use warnings;
use Exporter 'import';
use Time::Piece;
use Time::Seconds;

our @EXPORT_OK = qw(add_gigasecond);
use constant FORMAT => "%Y-%m-%dT%H:%M:%S";
use constant GIGA => 1e9;

sub add_gigasecond {
    my ($time) = @_;

    my $tp = Time::Piece->strptime($time, FORMAT) + GIGA;
    $tp->strftime(FORMAT)

}

1
