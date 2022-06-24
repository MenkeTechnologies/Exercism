type planet =
  | Mercury
  | Venus
  | Earth
  | Mars
  | Jupiter
  | Saturn
  | Neptune
  | Uranus;

let orbitalPeriodInYears =
  fun
  | Earth => 1.0
  | Mercury => 0.2408467
  | Venus => 0.61519726
  | Mars => 1.8808158
  | Jupiter => 11.862615
  | Saturn => 29.447498
  | Uranus => 84.016846
  | Neptune => 164.79132;

let seconds_per_year = 365.25 *. 24.0 *. 60.0 *. 60.0;

let ageOn = (planet, seconds) => seconds /. seconds_per_year /. orbitalPeriodInYears(planet);
