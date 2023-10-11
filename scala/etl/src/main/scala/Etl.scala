
object Etl {
  def transform(intToStrings: Map[Int, Seq[String]]): Map[String, Int] =
    intToStrings.flatMap {
      case (k, v) => v.map(e => (e.toLowerCase, k))
    }

}
