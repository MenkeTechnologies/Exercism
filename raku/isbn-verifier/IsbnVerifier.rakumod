unit module IsbnVerifier;

sub is-isbn10 (Str $number) is export {
    my $clean-num = $number.trim.subst("-", "", :global);

    if $clean-num !~~ /^\d ** 9 <[0..9xX]>$/ {
           return False;
    }
    my @digits = << {$clean-num.comb} >>;

    if @digits[*-1] eq 'x'|'X' {
        @digits[*-1] = 10
    }

    (@digits Z* (1..10).reverse).sum %% 11;
}
