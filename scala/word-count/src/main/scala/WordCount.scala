case class WordCount(str: String) {
  def countWords =
    str.toLowerCase.trim.replaceAll(raw"(?!\w|'t\b).", " ")
      .split(raw"\s+")
      .foldLeft(Map[String, Int]()) { (acc, w) =>
        acc.updated(w, acc.getOrElse(w, 0) + 1)
      }
}
