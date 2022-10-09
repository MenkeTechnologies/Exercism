object Plant extends Enumeration {
  type Plant = Value
  val Violets = Value("V")
  val Clover = Value("C")
  val Radishes = Value("R")
  val Grass = Value("G")
}

object Garden {
  def defaultGarden(garden: String) = new Garden(garden)
}

class Garden(val garden: String) {
  def plants(name: String) = {
    val index = (name.head - 'A') * 2
    val lines = garden.linesIterator.toList
    val plants = lines(0).slice(index, index + 2) ++ lines(1).slice(index, index + 2)
    plants.map(c => Plant.withName(c.toString)).toList
  }
}
