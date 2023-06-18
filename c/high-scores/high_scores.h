#pragma once

#include <stddef.h>
#include <stdint.h>


int descending(const void *a, const void *b);

int32_t latest(const int32_t *scores, size_t scores_len);

int32_t personal_best(const int32_t *scores, size_t scores_len);

size_t personal_top_three(const int32_t *scores, size_t scores_len, int32_t *res);
