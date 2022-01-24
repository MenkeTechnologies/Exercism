//
// This is only a SKELETON file for the 'Prime Factors' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const primeFactors = (start) => {

  let fac = []
  let divisor = 2

  while (start > 1) {
    while (start % divisor === 0) {
      fac.push(divisor);
      start /= divisor;
    }
    ++divisor;
  }

  return fac;


};
