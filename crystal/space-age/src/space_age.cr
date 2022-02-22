module Space
  struct Age
    private AGE_IN_PLANETS = {
    "mercury" => 0.2408467,
    "venus"   => 0.61519726,
    "earth"   => 1.0,
    "mars"    => 1.8808158,
    "jupiter" => 11.862615,
    "saturn"  => 29.447498,
    "neptune" => 164.79132,
    "uranus"  => 84.016846,
    }
    private SPY = 31_557_600
    @years : Float64

    def initialize(sec)
      @years = sec / SPY
    end

    def self.from_seconds(sec)
      Age.new(sec)
    end

    def age_on_mercury
      @years / 0.2408467
    end

    def age_on_venus
      @years / 0.61519726
    end

    def age_on_earth
      @years
    end
    def age_on_mars
      @years / 1.8808158
    end

    def age_on_jupiter
      @years / 11.862615
    end
    def age_on_saturn
      @years /  29.447498
    end
    def age_on_uranus
      @years / 84.016846
    end
    def age_on_neptune
      @years / 164.79132
    end

  end
end
