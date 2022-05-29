#if !defined(ALLERGIES_H)
#define ALLERGIES_H

#include <string>
#include <unordered_map>
#include <unordered_set>

using namespace std;

namespace allergies {
    class allergy_test {
        unordered_map<std::string, unsigned int> const ALLERGEN_CODES{
                {"eggs",         1},
                {"peanuts",      2},
                {"shellfish",    4},
                {"strawberries", 8},
                {"tomatoes",     16},
                {"chocolate",    32},
                {"pollen",       64},
                {"cats",         128}
        };
        int score_;
    public:
        allergy_test(unsigned int score) : score_(score) {}

        bool is_allergic_to(const string &allergen) const;

        unordered_set <string> get_allergies() const;

    };
}

#endif // ALLERGIES_H
