package Prime;
use strict;
use warnings;

sub factors {
  my ($n) = @_;
  my @factors;
  my $divisor = 2;

  while ($n > 1) {
    while ($n % $divisor == 0) {
        push @factors, $divisor;
        $n /= $divisor;
    }
    ++$divisor;
  }

  \@factors
}

1
