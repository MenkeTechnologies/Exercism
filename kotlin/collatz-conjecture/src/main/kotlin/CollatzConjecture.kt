object CollatzCalculator {
    fun computeStepCount(start: Int): Int {

        require(start >= 1)
        return generateSequence(start) {
            if (it and 1 == 0) it / 2 else 3 * it + 1
        }.takeWhile { it > 1 }.count()

    }
}
