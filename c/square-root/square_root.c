#include "square_root.h"

uint16_t square_root(int number) {
    double initial = number / 2.0;
    double previous_guess = 0;
    while (fabs(initial - previous_guess) != 0) {
        previous_guess = initial;
        initial = 0.5 * (initial + (number / initial));
    }
    return (int) initial;
}
