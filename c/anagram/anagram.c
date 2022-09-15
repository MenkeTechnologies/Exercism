#include <string.h>
#include <stdlib.h>
#include <ctype.h>
#include "anagram.h"

inline static int is_diff(const char *s1, const char *s2) {
    for (const char *p1 = s1, *p2 = s2; *p1 && *p2; ++p1, ++p2)
        if (tolower(*p1) != tolower(*p2))
            return 0;
    return 1;
}

inline static int comparator(const void *c1, const void *c2) {
    return tolower(*(char *) c1) - tolower(*(char *) c2);
}

void find_anagrams(const char *subject, struct candidates *candidates) {
    size_t target_len = strlen(subject);
    char subject_copy[target_len];
    strcpy(subject_copy, subject);
    qsort(subject_copy, target_len, sizeof(char), comparator);
    for (size_t i = 0; i < candidates->count; ++i) {
        if (target_len != strlen(candidates->candidate[i].word)
            || is_diff(subject, candidates->candidate[i].word))
            candidates->candidate[i].is_anagram = NOT_ANAGRAM;
        else {
            char candidate_copy[target_len];
            strcpy(candidate_copy, candidates->candidate[i].word);
            qsort(candidate_copy, target_len, sizeof(char), comparator);

            if (is_diff(subject_copy, candidate_copy))
                candidates->candidate[i].is_anagram = IS_ANAGRAM;
            else
                candidates->candidate[i].is_anagram = NOT_ANAGRAM;
        }
    }
}
