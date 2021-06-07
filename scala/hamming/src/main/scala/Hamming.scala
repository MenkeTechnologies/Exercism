object Hamming {
  def distance(str: String, str1: String): Option[Int] = {

    if (str.length != str1.length) {
        return None
    }

    var sum = 0

    for (i <- 0 until str.length) {
      if (str.charAt(i) != str1.charAt(i)) {
          sum += 1
      }

    }

    Some(sum)

  }

}