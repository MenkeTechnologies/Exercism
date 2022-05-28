#include "space_age.h"

#define SECONDS_IN_EARTH_YEAR (31557600)

float ratio(planet_t planet){
    switch (planet)
    {
        case MERCURY: return 0.2408467;
        case VENUS: return 0.61519726;
        case EARTH: return 1.0;
        case MARS: return 1.8808158;
        case JUPITER: return 11.862615;
        case SATURN: return 29.447498;
        case URANUS: return 84.016846;
        case NEPTUNE: return 164.79132;
        default: return -1;
    }
}

float age(planet_t planet, int64_t seconds) {
    double rati = ratio(planet);
    
    return rati < 0 ? -1 : seconds / SECONDS_IN_EARTH_YEAR / rati;
}

