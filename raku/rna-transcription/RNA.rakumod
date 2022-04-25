unit module RNA;

constant %map = qw/ G C C G T A A U /;

sub to-rna ($dna) is export {
    $dna.comb.map({ %map{$_} }).join

}
