class Rules
  def bonus_points?(power_up_active, touching_bandit)
    raise "Please implement the Rules#bonus_points? method"
  end

  def score?(touching_power_up, touching_crystal)
    raise "Please implement the Rules#score? method"
  end

  def lose?(power_up_active, touching_bandit)
    raise "Please implement the Rules#lose? method"
  end

  def win?(has_picked_up_all_crystals, power_up_active, touching_bandit)
    raise "Please implement the Rules#win? method"
  end
end
