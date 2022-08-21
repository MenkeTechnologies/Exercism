#include "roman_numerals.h"
#include <string.h>
#include <stdlib.h>

static const RomanNumeral lookup[] = {
        {1000, "M"},
        {900,  "CM"},
        {500,  "D"},
        {400,  "CD"},
        {100,  "C"},
        {90,   "XC"},
        {50,   "L"},
        {40,   "XL"},
        {10,   "X"},
        {9,    "IX"},
        {5,    "V"},
        {4,    "IV"},
        {1,    "I"}};

char *to_roman_numeral(unsigned int number) {
    char *ptr = calloc(16, sizeof(char));
    char *r = ptr;
    for (int i = 0; i < 13; ++i) {
        RomanNumeral numeral = lookup[i];
        for (unsigned int j = 0; j < number / numeral.arab; ++j) {
            memcpy(ptr, numeral.roman, strlen(numeral.roman));
            ptr += strlen(numeral.roman);
        }
        number %= numeral.arab;
    }
    return r;
}
