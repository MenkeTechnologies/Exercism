class SpaceAge:
    SPY = 31557600.0
    years = {
        'Earth': 1,
        'Mercury': 0.2408467,
        'Venus': 0.61519726,
        'Mars': 1.8808158,
        'Jupiter': 11.862615,
        'Saturn': 29.447498,
        'Uranus': 84.016846,
        'Neptune': 164.79132,
    }

    def __init__(self, seconds):
        for planet in self.years.keys():
            setattr(self, f'on_{planet.lower()}', lambda arg=planet: round(seconds / self.SPY / self.years[arg], 2))
