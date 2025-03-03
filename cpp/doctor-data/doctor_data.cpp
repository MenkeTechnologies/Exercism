#include "doctor_data.h"

namespace heaven {
    Vessel Vessel::replicate(const string &nm) {
        return {nm, generation + 1, current_system};
    }

    const string &get_older_bob(const Vessel &v1, const Vessel &v2) {
        return v1.generation < v2.generation ? v1.name : v2.name;
    }

    bool in_the_same_system(const Vessel &v1, const Vessel &v2) {
        return v1.current_system == v2.current_system;
    }
}
