import Bearing._

case class Robot(bearing: Bearing.Value, coordinates: (Int, Int)) {
  val list = List(Bearing.North, Bearing.East, Bearing.South, Bearing.West)
  var ptr = bearing.id


  def bounds(dir: String): Robot = {
    if (dir == "r") if (ptr == 3) ptr = 0 else ptr += 1
    else if (ptr == 0) ptr = 3 else ptr -= 1
    Robot(list(ptr), coordinates)
  }

  def turnRight: Robot = bounds("r")
  def turnLeft: Robot = bounds("l")

  def advance: Robot = bearing match {
    case North => Robot(bearing, (coordinates._1, coordinates._2 + 1))
    case West => Robot(bearing, (coordinates._1 - 1, coordinates._2))
    case South => Robot(bearing, (coordinates._1, coordinates._2 - 1))
    case East => Robot(bearing, (coordinates._1 + 1, coordinates._2))
  }

  def simulate(moves: String): Robot = moves.foldLeft(this) ((acc,n) => {
    n match {
      case 'L' => acc.turnLeft
      case 'R' => acc.turnRight
      case 'A' => acc.advance
    }
  })
}
