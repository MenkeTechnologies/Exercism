object SumOfMultiples {

    fun sum(factors: Set<Int>, limit: Int) =
        (1 until limit).filter { factors.any { f -> f != 0 && it % f == 0 } }.sum()
}
