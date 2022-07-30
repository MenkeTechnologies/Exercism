class DNA(val s: String) {

  def nucleotideCounts(): Either[Boolean, Map[Char, Int]] =
    Right(s.foldLeft(Map('A' -> 0, 'T' -> 0, 'C' -> 0, 'G' -> 0))
    { (acc, c) =>
      acc.get(c) match {
        case None => return Left(false)
        case Some(v) => acc + (c -> (v + 1))
      }
    })

}
