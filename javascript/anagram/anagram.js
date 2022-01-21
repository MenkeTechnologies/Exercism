//
// This is only a SKELETON file for the 'Anagram' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const findAnagrams = (word, candidates) =>
  candidates.filter(n => n.toLowerCase().split('').sort().join() === word.toLowerCase().split('').sort().join() && n.toLowerCase() !== word.toLowerCase())
