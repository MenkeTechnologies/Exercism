#include "binary.h"

int convert(const char *s) {
    int res = 0;
    for (const char *c = s; *c; ++c) {
        if (*c != '0' && *c != '1') return INVALID;
        res = res * 2 + *c - '0'; 
    }
    return res;
}
