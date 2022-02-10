export const keep = (ary, pred) => ary.reduce((acc, n) => pred(n) ? [...acc, n] : acc, []);

export const discard = (ary, pred) => ary.reduce((acc, n) => !pred(n) ? [...acc, n] : acc, []);
