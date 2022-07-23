import scala.collection.mutable.SortedMap

class School {
  var db = SortedMap.empty[Int, Seq[String]]

  def add(name: String, g: Int) = db += (g -> (grade(g) :+ name))

  def grade(g: Int) = db.getOrElse(g, Seq())

  def sorted = db.map(m => m._1 -> m._2.sorted)
}

