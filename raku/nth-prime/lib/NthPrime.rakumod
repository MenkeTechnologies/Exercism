unit module NthPrime;

sub nth-prime ($n) is export {
    die if $n < 1;
    my @primes = <2>;
    my $curr = 3;

    while (@primes.elems < $n) {
        if (!@primes.first($curr % * == 0)) {
            @primes.push($curr);
        }
        $curr += 2;
    }

    @primes[*-1];
}

