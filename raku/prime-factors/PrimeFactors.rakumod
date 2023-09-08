unit module PrimeFactors;
sub factors ($start is copy) is export {
    my @facts;
    my $divisor = 2;
    while $start > 1 {
        while $start %% $divisor {
            @facts.push($divisor);
            $start div= $divisor;
        }
        $divisor++;
    }
    @facts;
}
