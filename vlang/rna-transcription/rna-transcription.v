module main

fn to_rna(dna string) string {
    return dna.replace_each(['G', 'C', 'C', 'G', 'T', 'A', 'A', 'U'])
}
