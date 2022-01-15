
object PascalsTriangle {
  def rows(i: Int): List[List[Int]] =
    if (i <= 0) List() else
      (2 to i).foldLeft(List(List(1))) { (acc, _) =>
        acc ++ List(List(1) ++ acc.last.dropRight(1).zipWithIndex.map { n => n._1 + acc.last(n._2 + 1) } ++ List(1))
      }


}
