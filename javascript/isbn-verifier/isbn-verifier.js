export const isValid = s =>
    (s.match(/^\d-?\d{3}-?\d{5}-?[\dX]$/) || false) &&
    s.split('').filter(c => c.match(/[X0-9]/)).reverse()
    .map((n, i) => n === 'X' ? 10 : n * (i + 1))
    .reduce((acc, n) => acc + n) % 11 === 0;
