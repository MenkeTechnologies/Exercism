export const nucleotideCounts = (s: string) => {
    const MAP: any = {'G': 0, 'A': 0, 'T': 0, 'C': 0}
    s.split('').forEach(c => {
        if (c in MAP) MAP[c]++; else throw new Error("Invalid nucleotide in strand");
    })

    return MAP;

};
