#include "bob.h"

char *hey_bob(char *s) {
    int uc = 0;
    int lc = 0;
    int c = 0;
    char *ptr = s;
    while (*ptr) {
        if (isupper(*ptr)) ++uc;
        else if (islower(*ptr)) ++lc;
        if (!isspace(*ptr)) ++c;
        ++ptr;
    }
    do --ptr; while (isspace(*ptr));
    
    if (!c) return "Fine. Be that way!";

    if (uc && !lc)
        return *ptr == '?' ? "Calm down, I know what I'm doing!" : "Whoa, chill out!";


    return *ptr == '?' ? "Sure." : "Whatever.";
}
