#include "etl.h"
#include <string.h>
#include <stdlib.h>
#include <ctype.h>

inline static int cmp(const void *a, const void *b) {
    return ((new_map *) a)->key - ((new_map *) b)->key;
}

int convert(const legacy_map *input, const size_t input_len, new_map **result) {
    int cnt = 0;
    for (size_t i = 0; i < input_len; ++i) cnt += strlen(input[i].keys);
    *result = malloc(cnt * sizeof(new_map));
    size_t k = 0;
    for (size_t i = 0; i < input_len; ++i) {
        for (size_t j = 0; j < strlen(input[i].keys); ++j) {
            (*result)[k].key = tolower(input[i].keys[j]);
            (*result)[k++].value = input[i].value;
        }
    }
    qsort(*result, cnt, sizeof(new_map), cmp);
    return cnt;
}

