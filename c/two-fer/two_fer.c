#include "two_fer.h"

#include <stdio.h>

void two_fer(char* out, const char* name){
    sprintf(out, "One for %s, one for me.", name ? name : "you");
}
