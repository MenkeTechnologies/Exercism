#include "space_age.h"

namespace space_age {

    static const int SPY = 31557600;
    double mercury_years_per_earth = 0.2408467;
    double venus_years_per_earth = 0.61519726;
    double mars_years_per_earth = 1.8808158;
    double jupiter_years_per_earth = 11.862615;
    double saturn_years_per_earth = 29.447498;
    double uranus_years_per_earth = 84.016846;
    double neptune_years_per_earth = 164.79132;

    space_age::space_age(double sec) : sec(sec) {}

    double space_age::seconds() const {
        return sec;
    }

    double space_age::on_earth() const {
        return sec / SPY;
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
