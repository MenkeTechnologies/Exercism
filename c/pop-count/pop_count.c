#include "pop_count.h"

unsigned int egg_count(int n) {
    int cnt = 0;
    while (n > 0) {
        cnt += n % 2;
        n >>= 1;
    }
    return cnt;
}
