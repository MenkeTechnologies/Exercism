

export const flatten = (ary) =>
  ary.map(n => Array.isArray(n) ? flatten([...n]) : [n]).reduce((acc,n ) => [...acc, ...n], []).filter(n => n != null)
