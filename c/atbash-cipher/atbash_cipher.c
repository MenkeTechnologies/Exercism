#include "atbash_cipher.h"

static char *atbash(const char *s, int type) {
    char *res = calloc(strlen(s) * (type + 1), sizeof(char));
    int i = 0;
    while (*s) {
        if (type && *(s + 1) && !((i + 1) % 6))
            res[i++] = ' ';
        if (isalpha(*s))
            res[i++] = 'z' + 'a' - tolower(*s);
        if (isdigit(*s))
            res[i++] = *s;
        ++s;
    }
    return res;
}

char *atbash_encode(const char *input) {
    return atbash(input, 1);
}

char *atbash_decode(const char *input) {
    return atbash(input, 0);
}
