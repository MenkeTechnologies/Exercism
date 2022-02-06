#include "armstrong_numbers.h"
#include <stdio.h>
#include <math.h>

bool is_armstrong_number(int candidate) {
    char buf[10];

    int sum = 0;
    int len = sprintf(buf, "%d", candidate);

    for (int i = 0; i < len; ++i) {
        sum += pow(buf[i] - '0', len);
    }

    return sum == candidate;
}
