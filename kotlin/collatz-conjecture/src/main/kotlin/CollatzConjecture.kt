object CollatzCalculator {
    fun computeStepCount(start: Int): Int {

        require(start >= 1)
        var cnt = 0
        var s = start

        while (s != 1) {
            if (s % 2 == 0) {
                s /= 2
            } else {
                s = 3 * s + 1
            }
            ++cnt
        }

        return cnt
    }
}
