export const compute = (s1, s2) =>
  s1.length !== s2.length ?
    (() => {
      throw new Error('strands must be of equal length')
    })() :
    [...s1].filter((c, i) => c !== s2[i]).length
