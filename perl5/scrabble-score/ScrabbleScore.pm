package ScrabbleScore;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(scrabble_score);
use List::Util 'sum';

my %points = (
    (map {$_ => 1} qw(A E I O U L N R S T)),
    (map {$_ => 2} qw(D G)),
    (map {$_ => 3} qw(B C M P)),
    (map {$_ => 4} qw(F H V W Y)),
    (map {$_ => 5} qw(K)),
    (map {$_ => 8} qw(J X)),
    (map {$_ => 10} qw(Q Z))
);

sub scrabble_score {
    $_ = shift;

    (sum map {$points{$_}} split //, uc) // 0
}

1;
