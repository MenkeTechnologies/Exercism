object SecretHandshake {
  val MAP = Map( 1 -> "wink", 2 -> "double blink", 4 -> "close your eyes", 8 -> "jump" )
  def commands(m: Int) =
    List(MAP.filterKeys(k => (m & k) > 0).values, m & 16).foldLeft(List[String]())((acc, n) =>
      n match {
        case li: Iterable[String] => acc ++ li
        case n: Int => if (n > 0) acc.reverse else acc
      }
    )
}
