
object Diamond {

  val alpha = 'A' to 'Z'

  def rows(c: Char) = {
    val rng = 0 to alpha.indexOf(c)
    val rvs = rng.reverse
    (rng ++ rvs.drop(1)).map(r =>
      (rvs ++ rng.drop(1)).foldLeft("") { (acc, c) =>
        if (c == r) acc + alpha(r) else acc + " "
      }
    ).toList
  }
}
