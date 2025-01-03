export const isValid = (str: string) =>
    (str.match(/^\d-?\d{3}-?\d{5}-?[\dX]$/) || false) &&
    str.split('').filter(c => c.match(/[X0-9]/)).reverse()
        .map((n, i) => n === 'X' ? 10 : parseInt(n) * (i + 1))
        .reduce((acc, n) => acc + n) % 11 === 0;
