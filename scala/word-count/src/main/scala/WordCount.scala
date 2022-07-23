case class WordCount(str: String) {
  def countWords =
    str.toLowerCase.trim.replaceAll(raw"(?!\w|'t\b).", " ")
      .split(raw"\s+")
      .foldLeft(Map[String, Int]()) { (acc, n) =>
        acc.updated(n, acc.getOrElse(n, 0) + 1)
      }
}
