export const isPangram = (str) =>
  [...Array(26).keys()].map(i => String.fromCharCode('A'.charCodeAt(0) + i)).every(c => str.toUpperCase().includes(c));
