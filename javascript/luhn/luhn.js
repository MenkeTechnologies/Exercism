export const valid = (str) => {
    const nows = str.replace(/\s/g, '')
    if (nows.length < 2 || nows.match(/\D/)) return false;
    return nows.split('').reverse().map((c, i) => {
        if (i % 2 === 1) c *= 2;
        return c > 9 ? c - 9 : parseInt(c)
    }).reduce((acc, n) => acc + n, 0) % 10 === 0;
}