#include "series.h"
#include <string.h>
#include <stdlib.h>

slices_t slices(char *input_text, unsigned int substring_length) {
    unsigned int len = strlen(input_text);
    if (len < substring_length || substring_length == 0) return (slices_t) {0, NULL};
    unsigned int window_count = len - substring_length + 1;
    unsigned int window_len = substring_length + 1;
    size_t ptr_size = sizeof(char *);
    slices_t output = {window_count, calloc(window_count, ptr_size)};
    for (size_t position = 0; position < window_count; ++position) {
        output.substring[position] = calloc(window_len, ptr_size);
        strncpy(output.substring[position], &input_text[position], substring_length);
    }
    return output;
}
