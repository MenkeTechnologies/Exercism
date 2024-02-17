export const eggCount = (displayValue) =>
  [...displayValue.toString(2)].filter(c => c === '1').reduce((acc, n) => acc + parseInt(n), 0)

