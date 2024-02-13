#include "kindergarten_garden.h"
#include <string.h>

static plant_t char_to_plant(char c) {
    switch (c) {
        case 'V':
            return VIOLETS;
        case 'G':
            return GRASS;
        case 'C':
            return CLOVER;
        default:
            return RADISHES;
    }
}

plants_t plants(const char *diagram, const char *student) {
    plants_t res;
    long row_len = strchr(diagram, '\n') - diagram;
    int base_idx = student[0] - 'A';
    res.plants[0] = char_to_plant(diagram[base_idx * 2]);
    res.plants[1] = char_to_plant(diagram[base_idx * 2 + 1]);
    res.plants[2] = char_to_plant(diagram[row_len + base_idx * 2 + 1]);
    res.plants[3] = char_to_plant(diagram[row_len + base_idx * 2 + 2]);
    return res;
}
