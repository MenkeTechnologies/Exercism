#include "diamond.h"
#include <stdlib.h>
#include <string.h>

char **make_diamond(const char letter) {
    size_t n = letter - 'A' + 1;
    size_t rows = 2 * n - 1;
    size_t cols = rows + 1;
    char **diamond = (char **) calloc(rows, sizeof(char *));
    size_t i;
    diamond[0] = (char *) calloc(rows * cols, sizeof(char));
    memset(diamond[0], ' ', rows * cols);
    diamond[0][cols - 1] = '\0';
    for (i = 1; i < rows; ++i) {
        diamond[i] = diamond[i - 1] + cols;
        diamond[i][cols - 1] = '\0';
    }
    for (i = 0; i < n; ++i) {
        diamond[i][n - i - 1] = 'A' + i;
        diamond[i][n + i - 1] = 'A' + i;
        diamond[rows - i - 1][n - i - 1] = 'A' + i;
        diamond[rows - i - 1][n + i - 1] = 'A' + i;
    }
    return diamond;
}

void free_diamond(char **diamond) {
    if (diamond) {
        free(*diamond);
    }
    free(diamond);
}
