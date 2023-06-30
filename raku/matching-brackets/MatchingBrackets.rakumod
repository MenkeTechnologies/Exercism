unit module MatchingBrackets;

constant %brackets = <( ) [ ] { }>;

sub has-matching-brackets ($s) is export {
    my @stk;
    for $s.comb(/<[()[\]{}]>/) -> $c {
        with %brackets{$c} {
            @stk.push($_);
        } else {
            return False unless @stk && $c eq @stk.pop;
        }
    }
    @stk.elems == 0;
}
