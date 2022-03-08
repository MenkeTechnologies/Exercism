export const sum = (factors: number[], limit: number) =>
    [...Array(limit).keys()].filter(n => n > 0).filter(n => factors.some(f => f !== 0 && n % f === 0)).reduce((acc, n) => acc + n, 0);
