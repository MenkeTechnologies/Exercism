component {
    function age(planet, seconds)
    {
        dict = {'Earth':1,
            'Mercury':0.2408467,
            'Venus': 0.61519726,
            'Mars': 1.8808158,
            'Jupiter': 11.862615,
            'Saturn': 29.447498,
            'Uranus': 84.016846,
            'Neptune': 164.79132};

        SPY = 31557600;

        return numberFormat(seconds / SPY / dict[planet], '__.00');
    }
}
