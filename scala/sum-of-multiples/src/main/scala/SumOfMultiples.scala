

object SumOfMultiples {
  def sum(factors: Set[Int], limit: Int): Int = {

    factors.flatMap(f => {
      (1 until limit).takeWhile(_ * f < limit).map(_ * f)
    }).sum

  }
}

