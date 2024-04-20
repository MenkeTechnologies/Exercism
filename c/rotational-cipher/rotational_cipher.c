#include "rotational_cipher.h"
#include <stdlib.h>
#include <string.h>

char *rotate(const char *s, int shift_key) {
    int len = strlen(s);
    char *res = calloc(len + 1, sizeof(char));
    for (int i = 0; i < len; ++i) {
        if ('a' <= s[i] && s[i] <= 'z') {
            res[i] = (s[i] - 'a' + shift_key) % 26 + 'a';
        } else if ('A' <= s[i] && s[i] <= 'Z') {
            res[i] = (s[i] - 'A' + shift_key) % 26 + 'A';
        } else res[i] = s[i];
    }

    return res;
}
