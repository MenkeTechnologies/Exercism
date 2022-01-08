object fizz {

  def main(args: Array[String]): Unit = {

    (1 to 100).map { i =>
      Map(3 -> "Fizz", 5 -> "Buzz", 1 -> "")
        .filterKeys {
          i % _ == 0
        }.foldLeft("") {
        (acc, n) => if (n._1 != 1) acc + n._2 else if (acc.isEmpty) s"$i" else acc
      }
    }.mkString("\n")

    (1 to 100).map { i =>
      List(Map(3 -> "Fizz", 5 -> "Buzz")
        .filterKeys {
          i % _ == 0
        }.values.mkString)
        .map { s => if (s.nonEmpty) s else s"$i" }.mkString
    }.mkString("\n")

  }

}
