#pragma once

#include <stddef.h>

#define MAX_STR_LEN 20

enum anagram_status {
    UNCHECKED = -1, NOT_ANAGRAM, IS_ANAGRAM
};

struct candidate {
    enum anagram_status is_anagram;
    const char *word;
};

struct candidates {
    struct candidate *candidate;
    size_t count;
};

void find_anagrams(const char *subject, struct candidates *candidates);
