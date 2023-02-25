#include "largest_series_product.h"
#include <string.h>
#include <ctype.h>

int64_t largest_series_product(char *series, size_t size) {
    if (size > strlen(series)) return -1;
    int64_t max = 0;
    for (size_t i = 0; i < strlen(series) - size + 1; ++i) {
        int64_t product = 1;
        for (size_t j = i; j < i + size; ++j) {
            if (!isdigit(series[j])) return -1;
            product *= series[j] - '0';
        }
        if (product > max) max = product;
    }
    return max;
}
