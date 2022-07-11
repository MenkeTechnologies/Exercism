#!/usr/bin/env gawk -f

{
    n = $1
    r = ""
    while (n >= 1000) {r = r  "M"; n -= 1000}
    while (n >=  900) {r = r "CM"; n -=  900}
    while (n >=  500) {r = r  "D"; n -=  500}
    while (n >=  400) {r = r "CD"; n -=  400}
    while (n >=  100) {r = r  "C"; n -=  100}
    while (n >=   90) {r = r "XC"; n -=   90}
    while (n >=   50) {r = r  "L"; n -=   50}
    while (n >=   40) {r = r "XL"; n -=   40}
    while (n >=   10) {r = r  "X"; n -=   10}
    while (n >=    9) {r = r "IX"; n -=    9}
    while (n >=    5) {r = r  "V"; n -=    5}
    while (n >=    4) {r = r "IV"; n -=    4}
    while (n >=    1) {r = r  "I"; n -=    1}
    print r
}

