#include "allergies.h"

bool is_allergic_to(allergen_t allergen, int mask) {
    return 1 << allergen & mask;
}

allergen_list_t get_allergens(int mask) {
    allergen_list_t allergenList;
    allergenList.count = 0;
    for (int i = 0; i < ALLERGEN_COUNT; ++i) {
        if (is_allergic_to(i, mask)) {
            allergenList.allergens[i] = true;
            ++allergenList.count;
        } else {
            allergenList.allergens[i] = false;
        }
    }
    return allergenList;
}
