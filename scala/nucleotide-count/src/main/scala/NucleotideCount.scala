import scala.collection.mutable

class DNA(val str: String) {

  def nucleotideCounts(): Either[Boolean, Map[Char, Int]] = {

    val mm = mutable.Map(
      'A' -> 0,
      'T' -> 0,
      'C' -> 0,
      'G' -> 0,
    )

    val kl = mm.keys.toList
    if (!str.forall(kl.contains(_))) {
      return Left(false)
    }

    str.toCharArray.foreach(mm(_) += 1)


    Right(Map() ++ mm)


  }

}
