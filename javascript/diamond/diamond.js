export const rows = c => {
    let offset = c.charCodeAt(0) - 'A'.charCodeAt(0) + 1
    return [...Array(offset).keys(), ...[...Array(offset).keys()].slice(0, -1).reverse()].map((row) => [...[...Array(offset).keys()].reverse(), ...[...Array(offset).keys()].slice(1)].reduce((acc, midOffset) => acc + (row === midOffset ? String.fromCharCode('A'.charCodeAt(0) + row) : ' '), ""))

};
