#include "resistor_color_duo.h"
int color_code(resistor_band_t color[]) {
    return 10 * color[0] + color[1];
}
