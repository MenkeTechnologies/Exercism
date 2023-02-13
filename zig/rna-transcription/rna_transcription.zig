const mem = @import("std").mem;
const RnaError = error{IllegalDnaNucleotide};

pub fn toRna(alloc: mem.Allocator, dna: []const u8) (RnaError || mem.Allocator.Error)![]const u8 {
    const rna = try alloc.alloc(u8, dna.len);
    for (dna) |nuc, i| {
        switch (nuc) {
            'G' => rna[i] = 'C',
            'C' => rna[i] = 'G',
            'T' => rna[i] = 'A',
            'A' => rna[i] = 'U',
            else => return RnaError.IllegalDnaNucleotide,
        }
    }
    return rna;
}
