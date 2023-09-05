class JuiceMaker
  def initialize(@fluid : Int32)
    @running= false
  end
  def start
    @running = true
  end
  def stop(juice_in_cup)
    @fluid -= juice_in_cup * 5
    @running = false
  end
  def running?
    @running
  end
  def add_fluid(amt)
    @fluid += amt
  end
  def self.debug_light_on?
    true
  end
end

