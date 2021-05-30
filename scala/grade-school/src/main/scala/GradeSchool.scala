class School {
  type DB = Map[Int, Seq[String]]

  var roster: DB = Map()

  def add(name: String, g: Int) = {
    var names: Seq[String] = roster.getOrElse(g, Seq.empty)
    names ++= Seq(name)
    roster += (g -> names)
  }

  def db: DB = roster

  def grade(g: Int): Seq[String] = {
    roster.getOrElse(g, Seq.empty)
  }

  def sorted: DB = {
    roster.map(m => m._1 -> m._2.sorted).toSeq.sortBy(_._1).toMap
  }
}

