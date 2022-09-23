unit module CollatzConjecture;

sub collatz-conjecture ($number is copy) is export {
    die "input must be >= 1" if $number < 1;

    my $cnt = 0;

    while $number > 1 {
        $number = $number %% 2 ?? $number / 2 !! $number * 3 + 1;
        ++$cnt;
    }
    $cnt
}
