unit module NucleotideCount;

subset DNASequence of Str where /^ <[ACTG]>* $/;

sub nucleotide-count (DNASequence $strand) is export {
    $strand.comb.Bag
}
