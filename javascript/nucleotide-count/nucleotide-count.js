export const countNucleotides = s =>
  s.match(/[^ACGT]/g) != null ? (() => {
    throw new Error('Invalid nucleotide in strand')
  })() : Object.values(s.split('')
    .reduce((acc, n) => ++acc[n] && acc, {A: 0, C: 0, G: 0, T: 0}))
    .join(' ')
