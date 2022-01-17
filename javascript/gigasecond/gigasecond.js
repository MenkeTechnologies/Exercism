//
// This is only a SKELETON file for the 'Gigasecond' exercise. It's been provided as a
// convenience to get you started writing code faster.
//
let MS = 1e3
let GIGA = 1e9 * MS;
export const gigasecond = (date) => new Date(date.getTime() + GIGA)
