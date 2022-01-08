object Raindrops {
  val MAP = Map(3 -> "Pling", 5 -> "Plang", 7 -> "Plong", 1 -> null)

  def convert(num: Int): String =
    MAP.filterKeys(num % _ == 0).foldLeft(""){ (acc, n) => if (n._1 != 1) acc + n._2 else if (acc.isEmpty) s"$num" else acc }

}

