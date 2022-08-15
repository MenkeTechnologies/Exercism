package ListOps;
use strict;
use warnings;

sub map {
  $_ = $_[0]->($_) for @{$_[1]};
  $_[1]
}
sub length {
  scalar @{$_[0]}
}
sub reduce {
  my $acc = shift @{$_[1]};
  $acc = $_[0]->($acc, $_) for @{$_[1]};
  $acc
}

1
