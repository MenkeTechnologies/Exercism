const dict= new Map([
    [1, 'wink'],
    [2, 'double blink'],
    [4, 'close your eyes'],
    [8, 'jump'],
]);
const rvs = 16;

export const commands = (cmd = 0) =>
    [...[...dict.keys()].filter(k => (cmd & k) > 0).map(k => dict.get(k)), cmd & rvs]
        .reduce((acc, n) =>
                typeof n === 'string' ? [...acc, n] : n > 0 ? acc.reverse() : acc
            , [])
