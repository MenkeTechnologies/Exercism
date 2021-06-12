
object Etl {
  def transform(intToStrings: Map[Int, Seq[String]]): Map[String, Int] = {

    var map = Map[String, Int]()

    for ((k, v) <- intToStrings) {
      for (elem <- v) {
        map += elem.toLowerCase -> k

      }
    }

    map

  }

}