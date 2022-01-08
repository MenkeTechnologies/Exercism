object Raindrops {
  val MAP = Map(3 -> "Pling", 5 -> "Plang", 7 -> "Plong")

  def convert(n: Int) = List(MAP.filterKeys(n % _ == 0).values.mkString)
    .map(s => if (s.nonEmpty) s else s"$n").mkString

}

