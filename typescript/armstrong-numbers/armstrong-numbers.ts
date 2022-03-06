export const isArmstrongNumber = (number: number) => number === number.toString().split('').map(d => parseInt(d) ** number.toString().split('').length).reduce((acc, n) => acc + n, 0);
