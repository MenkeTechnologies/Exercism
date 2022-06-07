unit module WordCount;

sub count-words ($sentence) is export {
    $sentence.lc.comb(/\w+ [ "'" \w+ ]*/).Bag
}
