package ScrabbleScore;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT_OK = qw(score);

my %points = (
    (map { $_ => 1 } qw(A E I O U L N R S T)),
    (map { $_ => 2 } qw(D G)),
    (map { $_ => 3 } qw(B C M P)),
    (map { $_ => 4 } qw(F H V W Y)),
    (map { $_ => 5 } qw(K)),
    (map { $_ => 8 } qw(J X)),
    (map { $_ => 10 } qw(Q Z))
);


sub score {
  local $_ = shift;

  my @ch = split //, uc;

  my $sc = 0;

  $sc += $points{$_} for @ch;

  $sc
}

1;
