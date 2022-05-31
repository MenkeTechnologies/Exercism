#include "perfect_numbers.h"


kind classify_number(int num) {
    if (num < 1) return ERROR;
    int sum = 0;
    for (int i = 1; i <= num / 2; ++i)
        if (num % i == 0) sum += i;
    if (sum == num)
        return PERFECT_NUMBER;
    else if (sum > num)
        return ABUNDANT_NUMBER;
    else
        return DEFICIENT_NUMBER;

}
