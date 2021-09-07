object CollatzConjecture {
  def steps(num: Int): Option[Int] = {

    if (num <= 0) {
      return None
    }

    var cnt = 0
    var num2 = num
    while (num2 != 1) {

      if (num2 % 2 == 0) {
        num2 /= 2
      } else {
        num2 = 3 * num2 + 1
      }
      cnt += 1
    }

    Some(cnt)

  }

}
