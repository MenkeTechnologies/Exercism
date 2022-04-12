#include "resistor_color.h"

int color_code(resistor_band_t resistorBand) {
    return resistorBand;
}
int color[TYPES];

int *colors() {
    for (int i = 0; i < TYPES; ++i) {
        color[i] = i;
    }

    return color;
}
