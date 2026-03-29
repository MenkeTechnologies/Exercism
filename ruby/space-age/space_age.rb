# frozen_string_literal: true
# Write your code for the 'Space Age' exercise in this file. Make the tests in
# `space_age_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/space-age` directory.

class SpaceAge

  SPY = 31_557_600.0

  def initialize(s)
    @s = s
  end

  def on_earth
    @s / SPY
  end

  def on_mercury
    calc(0.2408467)
  end

  def on_venus
    calc(0.61519726)
  end

  def on_mars
    calc(1.8808158)
  end

  def on_jupiter
    calc(11.862615)
  end

  def on_saturn
    calc(29.447498)
  end

  def on_uranus
    calc(84.016846)
  end

  def on_neptune
    calc(164.79132)
  end

  private

  def calc(ratio)
    on_earth / ratio
  end

end
