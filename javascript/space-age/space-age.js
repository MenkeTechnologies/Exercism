const SPY = 31557600;
const MAP = {
    'mercury': 0.2408467,
    'venus': 0.61519726,
    'mars': 1.8808158,
    'jupiter': 11.862615,
    'saturn': 29.447498,
    'uranus': 84.016846,
    'neptune': 164.79132,
    'earth': 1
}

export const age = (planet, sec) => Number((sec / MAP[planet] / SPY).toFixed(2));