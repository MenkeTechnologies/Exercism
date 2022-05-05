#include "pangram.h"
#include <string.h>
#include <ctype.h>
#include <stdlib.h>

bool is_pangram(const char *sentence) {

    if (!sentence) {
        return false;
    }
    char *lc = (char *) malloc(strlen(sentence) + 1);
    strcpy(lc, sentence);
    for (int i = 0; sentence[i]; i++) {
        lc[i] = tolower(sentence[i]);
    }

    for (char i = 'a'; i <= 'z'; ++i) {
        if (!strchr(lc, i)) {
            return false;
        }
    }
    return true;

}
