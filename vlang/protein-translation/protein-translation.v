module main

import arrays { chunk }

fn to_protein(codon string) string {
	return match codon {
		'AUG' { 'Methionine' }
		'UUU', 'UUC' { 'Phenylalanine' }
		'UUA', 'UUG' { 'Leucine' }
		'UCU', 'UCC', 'UCA', 'UCG' { 'Serine' }
		'UAU', 'UAC' { 'Tyrosine' }
		'UGU', 'UGC' { 'Cysteine' }
		'UGG' { 'Tryptophan' }
        'UAA', 'UAG', 'UGA' { 'STOP' }
		else { 'UNKNOWN' }
	}
}

fn codons(rna string) []string {
	return chunk(rna.split(''), 3).map(it.join(''))
}

fn proteins(strand string) ![]string {
    mut res := []string{}
    for protein in codons(strand).map(to_protein(it)) {
        match protein {
            'STOP' { return res }
            'UNKNOWN' { return error('Invalid codon') }
            else { res << protein }
        }
    }
    return res
}

