#include "dnd_character.h"
#include <cmath>
#include <cstdlib>

namespace dnd_character {
    Character::Character() : strength{ability()}, dexterity{ability()}, constitution{ability()},
                             intelligence{ability()}, wisdom{ability()}, charisma{ability()} {
        hitpoints = 10 + modifier(constitution);
    }

    int ability() {
        return rand() % 16 + 3;
    }

    int modifier(int value) {
        return std::floor((value - 10) / 2.0);
    }
}
