unit module Scrabble;

my %scores = flat
(<A E I O U L N R S T> X=> 1),
(<D G> X=> 2),
(<B C M P> X=> 3),
(<F H V W Y> X=> 4),
'K' => 5,
(<J X> X=> 8),
(<Q Z> X=> 10),
;

sub score ($word) is export {
    $word.uc.comb.map({ %scores{$_} }).sum
}

