
case class WordCount(str: String) {
  def countWords = {

    var map: Map[String, Int] = Map()
    val list = str.toLowerCase.trim.replaceAll(raw"(?!\w|'t\b).", " ")
      .split(raw"\s+")

    for (word <- list) {
      val cnt = map.getOrElse(word, 0) + 1
      map += (word -> cnt)
    }

    map
  }

}
