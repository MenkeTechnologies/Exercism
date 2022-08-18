export const countNucleotides = strand => {
  if (strand.match(/[^ACGT]/g) != null ) throw new Error('Invalid nucleotide in strand')

  const count = strand.split('').reduce((acc,n) => ++acc[n] && acc, { A: 0, C: 0, G: 0, T: 0});
  
  return Object.values(count).join(' ')
};
