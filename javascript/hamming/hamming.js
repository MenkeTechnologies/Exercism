export const compute = (s1, s2) =>
  s1.length !== s2.length ?
    (() => { throw new Error('strands must be of equal length')})()
 : [...s1]
    .map((c,i) => c !== s2[i] ? 1 : 0)
    .reduce((acc,n) => acc + n, 0)
