//
// This is only a SKELETON file for the 'Flatten Array' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const flatten = (ary) =>
  ary.map(n => Array.isArray(n) ? flatten([...n]) : [n]).reduce((acc,n ) => [...acc, ...n], []).filter(n => n != null)
