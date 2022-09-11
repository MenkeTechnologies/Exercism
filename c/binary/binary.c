#include "binary.h"

int convert(const char *s) {
    int res = 0;
    for (char *c = s; *c; ++c) {
        if (*c != '0' && *c != '1') return -1;
        res = res * 2 + (*c == '0' ? 0 : 1);
    }
    return res;
}
