#include <stdlib.h>
#include "high_scores.h"

int descending(const void *a, const void *b) {
    return (*(int *) b - *(int *) a);
}

int32_t latest(const int32_t *scores, size_t scores_len) {
    return scores[scores_len - 1];
}

int32_t personal_best(const int32_t *scores, size_t scores_len) {
    qsort(scores, scores_len, sizeof(int), descending);
    return scores[0];
}

size_t personal_top_three(const int32_t *scores, size_t scores_len, int32_t *output) {
    qsort(scores, scores_len, sizeof(int), descending);
    int cnt = 0;
    while (cnt < 3 && cnt < scores_len) {
        output[cnt] = scores[cnt];
        ++cnt;
    }
    return cnt;
}
