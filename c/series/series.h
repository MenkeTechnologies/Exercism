#pragma once

typedef struct slices {
    unsigned int substring_count;
    char **substring;
} slices_t;
slices_t slices(char *input_text, unsigned int substring_length);
