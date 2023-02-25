#pragma once

#include <stdint.h>
#include <stdlib.h>

#define DIGITS_ARRAY_SIZE 64

size_t rebase(int8_t *digits, int16_t input_base, int16_t output_base, size_t input_length);
