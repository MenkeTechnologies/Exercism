const ROMAN_NUMERALS = [
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
export const toRoman = n =>
    ROMAN_NUMERALS.reduce(([acc_str, acc_remainder], [val, digits]) => [acc_str + digits.repeat(acc_remainder / val), acc_remainder % val],
        ["", n]
    )[0];