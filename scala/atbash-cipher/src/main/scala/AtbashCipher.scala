object AtbashCipher {
  val dict = (97 to 122).map(n => (n.toChar, (122 - n + 97).toChar)).toMap

  def encode(s: String) = s
    .replaceAll(raw"\W", "")
    .map(c => dict.getOrElse(c.toLower, c))
    .sliding(5, 5)
    .mkString(" ")

  def decode(s: String) = s
    .replaceAll(raw"\s", "")
    .map(c => dict.getOrElse(c.toLower, c))
    .mkString
}
