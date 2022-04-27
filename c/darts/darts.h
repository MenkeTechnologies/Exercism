#ifndef DARTS_H
#define DARTS_H

#include <stdint.h>

typedef struct coordanate
{
    float x;
    float y;
} coordinate_t;

uint8_t score(coordinate_t);

#endif
