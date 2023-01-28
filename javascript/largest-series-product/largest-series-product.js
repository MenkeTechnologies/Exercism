export const largestProduct = (text, winSize) => {
    if (text.match(/\D/g)) throw('Digits input must only contain digits');
    if (winSize > text.length) throw('Span must be smaller than string length');
    if (winSize < 0) throw('Span must be greater than zero');
    if (winSize === 0) return 1;
    let max = 0;
    for (let i = 0; i <= text.length - winSize; ++i) {
        const sub = text.substring(i, i + winSize).split('').map(n => parseInt(n)).reduce((acc, n) => acc * n);
        max = sub > max ? sub : max;
    }
    return max;
}
