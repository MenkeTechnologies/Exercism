export const keep = <T>(list: T[], fn: (_: T) => Boolean): T[] => {
  const init: T[] = []
  return list.reduce((acc, n) => fn(n) ? [...acc, n] : acc, init);
};

export const discard = <T>(list: T[], fn: (_: T) => Boolean) =>
  keep(list, (input) => !fn(input))
