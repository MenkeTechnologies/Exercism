#!/usr/bin/env gawk -f

{
    divisor = 2
    while ($1 > 1) {
        while ($1 % divisor == 0) {
            product = product == "" ? divisor : product " " divisor
            $1 /= divisor
        }
        ++divisor
    }
    print product
}

