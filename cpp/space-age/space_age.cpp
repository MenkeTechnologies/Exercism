#include "space_age.h"

namespace space_age {


    space_age::space_age(double sec) : sec(sec) {}

    double space_age::seconds() const {
        return sec;
    }

    double space_age::on_earth() const {
        return seconds() / SPY;
    }

    double space_age::on_mercury() const {
        return on_earth() / mercury_years_per_earth;
    }

    double space_age::on_venus() const {
        return on_earth() / venus_years_per_earth;
    }

    double space_age::on_mars() const {
        return on_earth() / mars_years_per_earth;
    }

    double space_age::on_jupiter() const {
        return on_earth() / jupiter_years_per_earth;
    }

    double space_age::on_saturn() const {
        return on_earth() / saturn_years_per_earth;
    }

    double space_age::on_uranus() const {
        return on_earth() / uranus_years_per_earth;
    }

    double space_age::on_neptune() const {
        return on_earth() / neptune_years_per_earth;
    }


}
