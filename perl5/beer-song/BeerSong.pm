package BeerSong;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<sing>;

sub sing {
    my ($ref) = @_;
    my $start = $ref->{bottles};
    my $cnt = $ref->{verses};
    my $end = $start - $cnt;
    my $r = "";

    for (my $i = $start; $i > $end; --$i) {

        my $n = "No more bottles";

        my $r2 = "Go to the store and buy some more, 99 bottles of beer on the wall.";

        if ($i == 1) {
            $n = "1 bottle";
            $r2 = "Take it down and pass it around, no more bottles of beer on the wall.";

        } elsif ($i != 0) {
            $n = "$i bottles";

            my $b = "bottles";
            if ($i == 2) {
                $b = "bottle";
            }
            $r2 = "Take one down and pass it around, @{[ $i - 1 ]} $b of beer on the wall.";
        }
        my $r1 = "$n of beer on the wall, @{[lc $n]} of beer.";

        $r .= $r1 . "\n";
        $r .= $r2 . "\n";

        if ($i != $end) {
            $r .= "\n"
        }
    }

    $r
}

1;
