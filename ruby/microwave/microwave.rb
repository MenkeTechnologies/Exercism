class Microwave
  def initialize minutes
    hr = minutes / 100
    min = minutes % 100
    if min >= 60
      min -= 60
      hr += 1
    end

    @time = format('%02d:%02d', hr, min)
  end

  def timer
    @time
  end
end
