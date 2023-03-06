#pragma once

namespace space_age {
    class space_age {
    private:
        double sec;
        static const int SPY = 31557600;
        const double mercury_years_per_earth = 0.2408467;
        const double venus_years_per_earth = 0.61519726;
        const double mars_years_per_earth = 1.8808158;
        const double jupiter_years_per_earth = 11.862615;
        const double saturn_years_per_earth = 29.447498;
        const double uranus_years_per_earth = 84.016846;
        const double neptune_years_per_earth = 164.79132;
    public:
        space_age(double sec);

        double seconds() const;

        double on_earth() const;

        double on_mercury() const;

        double on_venus() const;

        double on_mars() const;

        double on_jupiter() const;

        double on_saturn() const;

        double on_uranus() const;

        double on_neptune() const;
    };

}

