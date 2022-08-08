object Bearing extends Enumeration{
  type Bearing = Value
  val North, East, South, West = Value
}

import Bearing._

case class Robot(bearing: Bearing, coordinates: (Int, Int)) {
  val lst = List(North, East, South, West)
  var ptr = bearing.id

  def bounds(dir: String): Robot = {
    if (dir == "R") if (ptr == lst.size - 1) ptr = 0 else ptr += 1
    else if (ptr == 0) ptr = lst.size - 1 else ptr -= 1
    Robot(lst(ptr), coordinates)
  }

  def turnRight: Robot = bounds("R")
  def turnLeft: Robot = bounds("L")

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
