//
// This is only a SKELETON file for the 'Word Count' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const countWords = (str) =>
  str.toLowerCase().replace(/(?!\w|'t\b)./g, " ").trim().split(/\s+/).reduce((acc, n) => ({
    ...acc,
    [n]: ~~acc[n] + 1
  }), {});

