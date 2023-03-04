module main
const (
    EARTH_PERIOD = 31557600.0

	PLANET_DICT = {
		'Earth': 1.0,
		'Mercury': 0.2408467,
		'Venus': 0.61519726,
		'Mars': 1.8808158,
		'Jupiter': 11.862615,
		'Saturn': 29.447498,
		'Uranus': 84.016846,
		'Neptune': 164.79132,
	}
)

fn age(seconds f64, planet string) !f64 {
    ratio := PLANET_DICT[planet] or {return error("${planet} is not a valid planet")} 
    return seconds / EARTH_PERIOD / ratio
}
