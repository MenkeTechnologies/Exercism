#pragma once

#include <stdint.h>
#include <stddef.h>

#define MAXFACTORS 10

size_t find_factors(uint64_t n, uint64_t factors[static MAXFACTORS]);
