#include "allergies.h"

#include <unordered_set>

using namespace std;
namespace allergies {

    bool allergy_test::is_allergic_to(const string &allergen) const {
        return score_ & ALLERGEN_CODES.at(allergen);
    }

    unordered_set<string> allergy_test::get_allergies() const {
        unordered_set<string> allergies;
        for (const auto &entry: ALLERGEN_CODES)
            if (is_allergic_to(entry.first))
                allergies.insert(entry.first);
        return allergies;
    }
}
