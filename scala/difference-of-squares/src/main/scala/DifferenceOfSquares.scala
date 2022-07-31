object DifferenceOfSquares {

  private def sq(b: Int) = b * b

  def sumOfSquares(n: Int) = (1 to n).map(sq).sum

  def squareOfSum(n: Int) = sq((1 to n).sum)

  def differenceOfSquares(n: Int) = squareOfSum(n) - sumOfSquares(n)
}
