export const count = (str: string) =>
    str.toLowerCase().trim().split(/\s+/).reduce((acc, n) => acc.set(n, acc.get(n) + 1 || 1), new Map());
