#include <bitset>

#include "eliuds_eggs.h"

namespace chicken_coop {
    int positions_to_quantity(uint64_t n) {
        return static_cast<int>(std::bitset<64>(n).count());
    }
}
