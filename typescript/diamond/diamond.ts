export const makeDiamond = (c: string) => {
    const A = 'A'.charCodeAt(0), len = c.charCodeAt(0) - A, halfRow = []
    for (let i = 0; i <= len; ++i) {
        halfRow.push(' '.repeat(len - i) + String.fromCharCode(A + i) + ' '.repeat(i))
    }
    const rows = halfRow.map(line => line + [...line]
        .reverse().slice(1).join(''))
    const full = [...rows, ...[...rows].reverse().slice(1)]
    return full.join('\n') + '\n'
};
