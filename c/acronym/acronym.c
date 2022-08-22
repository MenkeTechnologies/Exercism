#include "acronym.h"
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

char *abbreviate(const char *s) {
    if (!s || !*s) {
        return NULL;
    }
    
    char *r = (char *) calloc(20, sizeof(char));
    *r = toupper(s[0]);
    int cnt = 1;
    for (unsigned int i = 1; i < strlen(s); ++i) {
        if ((s[i - 1] == ' ' || s[i - 1] == '-' ||
             s[i - 1] == '_') &&
            isalpha(s[i])) {
            *(r + cnt++) = toupper(s[i]);
        }
    }
    return r;
}
