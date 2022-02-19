object NthPrime {
  lazy val odds: Stream[Int] = Stream.from(3, 2)
  lazy val primes: Stream[Int] = 2 #:: odds.filter(n => odds.takeWhile(i => i * i <= n).forall(n % _ > 0))

  def prime(n: Int) = Some(n).filter(_ > 0).map(n => primes.take(n).last)
}
