MAP = {'A': 'U', 'T': 'A', 'C': 'G', 'G': 'C'}


def to_rna(dna_strand):
    return ''.join(MAP[i] for i in dna_strand)
