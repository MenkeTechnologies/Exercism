export const flatten = <T>(arr: T[], flattenArr: T[] = []): T[] =>
    arr.filter(n => n !== undefined)
        .map(n => Array.isArray(n) ? flatten(n, flattenArr) : [n])
        .reduce((acc, n) => [...acc, ...n], []);
