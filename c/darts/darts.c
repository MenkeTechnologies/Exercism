#include <math.h>
#include "darts.h"


const int SCORE_INNER_CIRCLE = 10;
const int SCORE_MIDDLE_CIRCLE = 5;
const int SCORE_OUTER_CIRCLE = 1;
const int SCORE_OUT_OF_BOUNDS = 0;


uint8_t score(coordinate_t coordinate) {
    float d = sqrtf(pow(coordinate.x, 2) + pow(coordinate.y, 2));

    return d <= 1 ? SCORE_INNER_CIRCLE : d <= 5 ? SCORE_MIDDLE_CIRCLE
    : d <= 10 ? SCORE_OUTER_CIRCLE : SCORE_OUT_OF_BOUNDS;
}
