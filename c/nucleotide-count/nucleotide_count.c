#include "nucleotide_count.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char *count(const char *s) {
    char *r = calloc(30, sizeof(char));
    int nums[4] = {0};
    for (; *s; ++s) {
        if (*s == 'A') ++nums[0];
        else if (*s == 'C') ++nums[1];
        else if (*s == 'G') ++nums[2];
        else if (*s == 'T') ++nums[3];
        else {
            strcpy(r, "");
            return r;
        }
    }
    sprintf(r, "%c:%d %c:%d %c:%d %c:%d", 'A', nums[0], 'C', nums[1],
            'G', nums[2], 'T', nums[3]);
    return r;
}
