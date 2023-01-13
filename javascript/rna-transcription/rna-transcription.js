const MAP = {
    G: 'C',
    C: 'G',
    T: 'A',
    A: 'U'
};

export const toRna = s =>
    s.toUpperCase().split("").map(c => MAP[c]).reduce((acc, n) => acc + n, "");
