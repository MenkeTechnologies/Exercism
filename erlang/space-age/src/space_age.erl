-module(space_age).

-export([age/2]).

age(Planet, Seconds) ->
  Seconds / (earth_year() * case Planet of
                              mercury -> 0.2408467;
                              venus -> 0.61519726;
                              earth -> 1.0;
                              mars -> 1.8808158;
                              jupiter -> 11.862615;
                              saturn -> 29.447498;
                              uranus -> 84.016846;
                              neptune -> 164.79132
                            end).
earth_year() -> 60 * 60 * 24 * 365.25.
