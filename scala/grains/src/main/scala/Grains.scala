
object Grains {

  private val rng = 1 to 64

  def square(num: Int) = Option(num).filter(rng.contains).map { i => BigInt(2).pow(i - 1) }

  val total = rng.flatMap(square).sum
}
