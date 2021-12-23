class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    fact = 1
    if @speed >= 5 && @speed <= 8
      fact = 0.9
    elsif @speed == 9
      fact = 0.8
    elsif @speed == 10
      fact = 0.77
    end

    fact * 221 * @speed
  end

  def working_items_per_minute

    (production_rate_per_hour / 60).floor

  end
end
