export const isArmstrongNumber = (str) =>
  str.toString().split('').map(n => Math.pow(n, str.toString().split('').length)).reduce((acc,n)=> acc + n, 0) === str
