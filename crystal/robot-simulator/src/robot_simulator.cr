class RobotSimulator
  property x : Int32, y : Int32, direction : Symbol
  INCREMENTS = {north: [0,1], east: [1,0], south: [0,-1], west: [-1,0]}
  VALID_BEARINGS = INCREMENTS.keys

  def initialize(cordinates : Tuple(Int32, Int32), @direction : Symbol)
    @x = cordinates[0]
    @y = cordinates[1]
  end
  def move(instruction : String)
    instruction.each_char { |c| c == 'L' ? turn_left : c == 'R' ? turn_right : advance }
  end
  def turn_right
    i = VALID_BEARINGS.index(@direction)
    @direction = i ? VALID_BEARINGS[(i + 1) % 4] : :north
  end
  def turn_left
    i = VALID_BEARINGS.index(@direction)
    @direction = i ? VALID_BEARINGS[(i - 1) % 4] : :south
  end
  def advance
    @x += INCREMENTS[@direction][0]
    @y += INCREMENTS[@direction][1]
  end
end
