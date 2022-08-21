#include "pangram.h"
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

bool is_pangram(const char *s) {

    if (!s) {
        return false;
    }
    char *lc = calloc(strlen(s) + 1, sizeof(char));
    strcpy(lc, s);
    for (int i = 0; s[i]; ++i) {
        lc[i] = tolower(s[i]);
    }

    for (char i = 'a'; i <= 'z'; ++i) {
        if (!strchr(lc, i)) {
            free(lc);
            return false;
        }
    }
    free(lc);
    return true;

}
