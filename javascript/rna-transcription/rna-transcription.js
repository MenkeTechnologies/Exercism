//
// This is only a SKELETON file for the 'RNA Transcription' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

const MAP = {
  G: 'C',
  C: 'G',
  T: 'A',
  A: 'U'
};

export const toRna = (str) =>
  str.toUpperCase().split("").map(c => MAP[c]).reduce((acc, n) => acc + n, "");
