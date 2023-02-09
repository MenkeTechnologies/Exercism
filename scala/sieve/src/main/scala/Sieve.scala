object Sieve {
  def primes(n: Int) = {
    def aux(lst: List[Int]): List[Int] = lst.headOption match {
      case None => lst
      case Some(head) => head :: aux(lst.tail.filter(_ % head != 0))
    }

    aux((2 to n).toList)
  }
}
