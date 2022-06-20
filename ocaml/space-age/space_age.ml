type planet = Mercury | Venus | Earth | Mars
            | Jupiter | Saturn | Neptune | Uranus

let age_on planet age =
  float_of_int age /. 31557600. /.
    match planet with
    | Mercury ->   0.2408467
    | Venus ->     0.61519726
    | Earth ->     1.
    | Mars ->      1.8808158
    | Jupiter ->   11.862615
    | Saturn ->    29.447498
    | Neptune ->   164.79132
    | Uranus ->    84.016846
