#include "luhn.h"
#include <ctype.h>
#include <string.h>

bool luhn(const char *num) {
    size_t cnt = 0;
    unsigned int sum = 0;
    for (size_t len = strlen(num); len > 0; --len) {
        char c = num[len - 1];
        if (c == ' ')
            continue;
        if (!isdigit(c))
            return false;
        unsigned int digit = c - '0';
        if (cnt % 2 != 0) {
            digit *= 2;
        }
        digit -= digit > 9 ? 9 : 0;
        sum += digit;
        cnt += 1;
    }
    return cnt > 1 && sum % 10 == 0;
}
