export const transform = dict =>
  Object.entries(dict).reduce((acc1, [num,letters]) =>
      ({...acc1, ...(letters.reduce((acc2, letter) => ({...acc2, [letter.toLowerCase()]: parseInt(num)}), {}))})
    , {});
