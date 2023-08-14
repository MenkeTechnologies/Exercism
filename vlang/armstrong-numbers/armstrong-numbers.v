module main

import math

pub fn is_armstrong_number(number u32) bool {
    mut digits := number.str().split("")
    mut sum := i64(0)
    for digit in digits {
        sum += math.powi(digit.u32(), digits.len)
    }
    return sum == number
}
