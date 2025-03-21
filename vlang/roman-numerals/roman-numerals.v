module main

import strings { repeat_string }

const roman_map = {
        'M': 1000, 'CM': 900, 'D': 500, 'CD': 400, 
        'C': 100, 'XC': 90, 'L': 50, 'XL': 40, 
        'X': 10, 'IX': 9, 'V': 5, 'IV': 4, 'I': 1
}

fn roman(num int) string {
    mut res := ''
    mut dup := num
    for key, val in roman_map {
        res += repeat_string(key, dup / val)
        dup %= val
    }
    return res
}
