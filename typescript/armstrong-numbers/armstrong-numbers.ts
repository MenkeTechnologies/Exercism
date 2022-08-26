export const isArmstrongNumber = (num: number) =>
  num === [...String(num)].map(c => Math.pow(Number(c), [...String(num)].length)).reduce((acc,n)=> acc + n, 0)
