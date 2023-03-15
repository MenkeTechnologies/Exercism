object PrimeFactorCalculator {

    fun primeFactors(int: Int) = primeFactors(int.toLong()).map { it.toInt() }

    fun primeFactors(long: Long): List<Long> {

        val l = mutableListOf<Long>()
        var dup = long

        var dividend = 2L

        while (dup > 1) {

            while (dup % dividend == 0L) {
                l.add(dividend)
                dup /= dividend
            }
            dividend += 1

        }

        return l
    }
}
