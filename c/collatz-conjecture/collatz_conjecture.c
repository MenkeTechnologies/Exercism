#include "collatz_conjecture.h"

int steps(int num) {

    if (num < 1) return -1;

    int cnt = 0;
    while (num > 1){
        if (num % 2 == 0) {
            num /= 2;
        } else {
            num = 3 * num + 1;
        }
        ++cnt;
    }
    return cnt;
}
