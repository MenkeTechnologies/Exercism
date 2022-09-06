

const MAP = {
  G: 'C',
  C: 'G',
  T: 'A',
  A: 'U'
};

export const toRna = (str) =>
  str.toUpperCase().split("").map(c => MAP[c]).reduce((acc, n) => acc + n, "");
