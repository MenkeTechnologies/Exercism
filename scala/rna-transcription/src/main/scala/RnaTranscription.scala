object RnaTranscription {
  def toRna(str: String): Option[String] = {

    val m = Map(
      "C" -> "G",
      "G" -> "C",
      "T" -> "A",
      "A" -> "U",
    )

    val list = m.keys.toList
    var r = ""

    for (k <- str.split("")) {

      if (!list.contains(k)) {
        return None
      }

      r += m(k)
    }

    Some(r)

  }

}
