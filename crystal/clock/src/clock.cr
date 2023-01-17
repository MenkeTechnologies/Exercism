class Clock
  getter hour : Int32
  getter minute : Int32
  def initialize(hour = 0, minute = 0)
    time = (hour * 60 + minute) % (24 * 60)
    @hour = time // 60
    @minute = time % 60
  end
 
  def +(other : Clock) : Clock
    Clock.new(@hour + other.hour, @minute + other.minute)
  end
 
  def -(other : Clock) : Clock
    Clock.new(@hour - other.hour, @minute - other.minute)
  end
 
  def ==(other : Clock) : Bool
    @hour == other.hour && @minute == other.minute
  end
 
  def to_s : String
    sprintf("%02d:%02d", @hour, @minute)
  end
end