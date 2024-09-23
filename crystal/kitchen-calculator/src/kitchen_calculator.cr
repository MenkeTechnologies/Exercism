module KitchenCalculator
  MILLILITERS = {milliliter: 1, cup: 240, fluid_ounce: 30, teaspoon: 5, tablespoon: 15}

  def self.get_volume(volume_pair)
    _, volume = volume_pair
    volume
  end
  def self.to_milliliter(volume_pair)
    unit, _ = volume_pair
    {:milliliter, get_volume(volume_pair) * MILLILITERS[unit] }
  end

  def self.from_milliliter(volume_pair, unit)
    { unit, get_volume(volume_pair) / MILLILITERS[unit] }
  end

  def self.convert(volume_pair, unit)
    from_milliliter(to_milliliter(volume_pair), unit)
  end
end
