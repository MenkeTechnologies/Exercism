class WeighingMachine
  getter precision : Int32
  property weight : Float64 = 0.0
  setter metric : Bool

  def initialize(@precision : Int32, @metric : Bool); end

  def weigh
    weight = @metric ? @weight : @weight * 2.20462
    weight.round(@precision).to_s
  end
end
