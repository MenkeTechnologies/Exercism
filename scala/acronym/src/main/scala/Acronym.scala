object Acronym {
  def abbreviate(phrase: String): String = {
    phrase.toUpperCase.replaceAll("-", " ").replaceAll("[,_]", "").split(raw"\s+").map(_.head).mkString

  }
}
