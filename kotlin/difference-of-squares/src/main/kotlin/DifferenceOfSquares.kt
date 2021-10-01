class Squares(private val tot: Int) {

    private fun Int.sq() = this * this


    fun sumOfSquares(): Int {
        return (0..tot).map { it.sq() }.sum()
    }

    fun squareOfSum(): Int {

        return (0..tot).sum().sq()
    }

    fun difference(): Int {
        return squareOfSum() - sumOfSquares()
    }
}
