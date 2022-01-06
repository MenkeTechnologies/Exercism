

object Luhn {
  def valid(str: String): Boolean = {


    val ltrs = str.filter(!_.isSpaceChar)

    if (ltrs.length < 2 || ltrs.exists(!_.isDigit)) {
      return false
    }

    ltrs.toCharArray.reverse.map { _.asDigit }.zipWithIndex.map { i =>
      var dbl = i._1
      if (i._2 % 2 == 1) dbl *= 2
      if (dbl > 9) dbl -= 9
      dbl
    }.sum % 10 == 0

  }

}
