unit module Sieve;

sub find-primes ( $number ) is export {
    my @numbers;

    for 2 .. $number {
        @numbers[$_] = True
    }
    for 2 .. $number -> $i {
        for $i + 1 .. $number {
            if @numbers[$_] {
                if $_ % $i == 0 {
                    @numbers[$_] = False
                }
            }
        }
    }
    my @res;
    for 2 .. $number {
        @res.push($_) if @numbers[$_]
    }
    @res
}

