const ROMAN_NUMERALS: [number, string][] = [
    [1000, 'M'],
    [900, 'CM'],
    [500, 'D'],
    [400, 'CD'],
    [100, 'C'],
    [90, 'XC'],
    [50, 'L'],
    [40, 'XL'],
    [10, 'X'],
    [9, 'IX'],
    [5, 'V'],
    [4, 'IV'],
    [1, 'I']
];
export const toRoman = (n: number) => {
    let acc = '';
    for (const [val, s] of ROMAN_NUMERALS) {
        acc += s.repeat(n / val)
        n %= val;
    }

    return acc;
};
