#include "binary_search.h"

const int *binary_search(int target, const int *arr, size_t n) {
    int lo = 0, hi = n - 1, mid;
    while (lo <= hi) {
        mid = (lo + hi) / 2;
        if (arr[mid] < target)
            lo = mid + 1;
        else if (arr[mid] > target)
            hi = mid - 1;
        else
            return &arr[mid];
    }
    return NULL;
}
