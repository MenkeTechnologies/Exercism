class ProteinTranslation {

    static def rna = [AUG: 'Methionine',
                      UUU: 'Phenylalanine',
                      UUC: 'Phenylalanine',
                      UUA: 'Leucine',
                      UUG: 'Leucine',
                      UCU: 'Serine',
                      UCC: 'Serine',
                      UCA: 'Serine',
                      UCG: 'Serine',
                      UAU: 'Tyrosine',
                      UAC: 'Tyrosine',
                      UGU: 'Cysteine',
                      UGC: 'Cysteine',
                      UGG: 'Tryptophan',
                      UAA: 'STOP',
                      UAG: 'STOP',
                      UGA: 'STOP'
    ]

    static def proteins(String strand) {

        return strand.collect()
                .collate(3)
                .collect {
                    def codon = it.join()
                    if (!rna.containsKey(codon)) {
                        throw new IllegalArgumentException("unknown codon $codon")
                    }
                    rna[codon]
                }
                .takeWhile { it != "STOP" }

    }
}