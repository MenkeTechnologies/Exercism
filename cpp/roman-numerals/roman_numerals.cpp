#include "roman_numerals.h"

namespace roman_numerals {

    const static multimap<unsigned int, string, greater<int>> dict{
            {1000, "M"},
            {990,  "XM"},
            {900,  "CM"},
            {500,  "D"},
            {490,  "XD"},
            {400,  "CD"},
            {100,  "C"},
            {90,   "XC"},
            {50,   "L"},
            {40,   "XL"},
            {10,   "X"},
            {9,    "IX"},
            {5,    "V"},
            {4,    "IV"},
            {1,    "I"}
    };

    string convert(unsigned int n) {
        string r;
        for (const auto &kv: dict) {
            for (auto i = 0U; i < n / kv.first; ++i) {
                r += kv.second;
            }
            n %= kv.first;
        }
        return r;
    }

}
