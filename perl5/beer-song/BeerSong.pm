package BeerSong;
use strict;
use warnings;
use Exporter qw/import/;
our @EXPORT_OK = qw/sing/;

sub verse {
    my $n = shift;
    $n < 1
      ? "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."
      : $n == 1
      ? "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall."
      : "$n bottles of beer on the wall, $n bottles of beer.\nTake one down and pass it around, @{[ $n - 1 ]} bottle@{[ $n > 2 ? 's' : '' ]} of beer on the wall.";

}

sub sing {
    my $args   = shift;
    my $top    = $args->{bottles};
    my $bottom = $top - $args->{verses} + 1;

    join "\n\n", map { verse $_} reverse $bottom .. $top;
}

1;
