object RomanNumerals {
  def roman(num: Int) =
    List(
      "M" -> 1000, "CM" -> 900, "D" -> 500, "CD" -> 400,
      "C" -> 100, "XC" -> 90, "L" -> 50, "XL" -> 40,
      "X" -> 10, "IX" -> 9, "V" -> 5, "IV" -> 4,
      "I" -> 1
    ).foldLeft("" -> num) { (acc, kv) =>
      (acc._1 + kv._1 * (acc._2 / kv._2), acc._2 % kv._2)
    }._1

}
