//
// This is only a SKELETON file for the 'Acronym' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const parse = (str) =>
  str.toUpperCase().replace(/[-_]/g, " ").split(/\s+/).map(n => n[0]).join("")
