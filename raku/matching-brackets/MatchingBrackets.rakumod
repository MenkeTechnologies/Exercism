unit module MatchingBrackets;

constant %brackets = <( ) [ ] { }>;

sub has-matching-brackets ($s) is export {
    say %brackets;
    my @stack;
    for $s.comb(/<[()[\]{}]>/) -> $c {
        with %brackets{$c} {
            @stack.push($_);
        } else {
            return False unless @stack && $c eq @stack.pop;
        }
    }
    @stack.elems == 0;
}
