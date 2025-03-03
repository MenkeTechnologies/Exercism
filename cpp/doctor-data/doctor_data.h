#pragma once

#include <string>

using namespace std;

namespace star_map {
    enum class System {
        Sol, AlphaCentauri, BetaHydri, DeltaEridani,
        EpsilonEridani, Omicron2Eridani
    };
}
namespace heaven {
    class Vessel {
    public:
        Vessel(string nm, unsigned gen = 1, star_map::System loc = star_map::System::Sol) :
                name(std::move(nm)), generation(gen), current_system(loc) {}

        Vessel replicate(const string &);

        const string name;
        const unsigned generation;
        star_map::System current_system;
        unsigned busters = 0;

        void make_buster() { ++busters; }

        bool shoot_buster() { return busters ? busters-- : busters; }
    };

    const string &get_older_bob(const Vessel &, const Vessel &);

    bool in_the_same_system(const Vessel &, const Vessel &);
}
