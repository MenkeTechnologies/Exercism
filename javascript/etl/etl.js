//
// This is only a SKELETON file for the 'ETL' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export const transform = (dict) =>
  Object.entries(dict).reduce((acc1, [num,letters]) =>
      ({...acc1, ...(letters.reduce((acc2, letter) => ({...acc2, [letter.toLowerCase()]: parseInt(num)}), {}))})
    , {});
