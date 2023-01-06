package Gigasecond;
use strict;
use warnings;
use Exporter qw/import/;
use Time::Piece;
use Time::Seconds;

our @EXPORT_OK = qw/add_gigasecond/;
use constant { FORMAT => "%Y-%m-%dT%H:%M:%S", GIGA => 1e9 };

sub add_gigasecond {
    ( Time::Piece->strptime( shift, FORMAT ) + GIGA )->strftime(FORMAT);
}

1
