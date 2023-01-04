package Sieve;
use strict;
use warnings;
use Exporter qw<import>;
our @EXPORT_OK = qw<find_primes>;

sub find_primes {
    my ($limit) = @_;
    my %numbers = map { $_ => 1 } 2 .. $limit;
    my @primes;
    while (%numbers) {
        my $top = ( sort { $a <=> $b } keys %numbers )[0];
        push @primes, $top;
        for ( my $n = $top ; $n <= $limit ; $n += $top ) {
            delete $numbers{$n};
        }
    }
    \@primes;
}
1;
