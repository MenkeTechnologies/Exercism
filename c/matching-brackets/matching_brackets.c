#include "matching_brackets.h"
#include <string.h>
#include <stdio.h>

bool is_paired(const char *s) {
    char brackets[strlen(s)];
    int top = 0;
    while (*s) {
        switch (*s) {
            case '{':
            case '[':
            case '(':
                brackets[top++] = *s;
                break;
            case '}':
                if (brackets[--top] != '{') return false;
                break;
            case ']':
                if (brackets[--top] != '[') return false;
                break;
            case ')':
                if (brackets[--top] != '(') return false;
                break;
        }
        ++s;
    }
    return top == 0;
}
