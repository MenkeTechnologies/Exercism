export const countWords = (str) =>
  str.toLowerCase().replace(/(?!\w|'t\b)./g, " ").trim().split(/\s+/).reduce((acc, n) => ({
    ...acc,
    [n]: ~~acc[n] + 1
  }), {});

