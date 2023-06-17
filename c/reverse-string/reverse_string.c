
#include "reverse_string.h"

char *reverse(const char *s) {
    int len = (int) strlen(s);
    char *res = calloc(len, sizeof(char));
    for (int i = 0; i < len; ++i) {
        res[len - i - 1] = s[i];
    }
    return res;
}
