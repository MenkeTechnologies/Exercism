module SpaceAge exposing (Planet(..), ageOn)


type Planet
    = Mercury
    | Venus
    | Earth
    | Mars
    | Jupiter
    | Saturn
    | Uranus
    | Neptune

spy = 31557600

ageOn : Planet -> Float -> Float
ageOn planet seconds =
    let earthYears = seconds / spy
        earthYearsFactor fact = earthYears / fact
    in case planet of
        Mercury -> earthYearsFactor 0.2408467
        Venus -> earthYearsFactor 0.61519726
        Earth -> earthYears
        Mars -> earthYearsFactor 1.8808158
        Jupiter -> earthYearsFactor 11.862615
        Saturn -> earthYearsFactor 29.447498
        Uranus -> earthYearsFactor 84.016846
        Neptune -> earthYearsFactor 164.79132
