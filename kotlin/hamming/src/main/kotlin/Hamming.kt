object Hamming {

    fun compute(leftStrand: String, rightStrand: String): Int {
        if (leftStrand.length != rightStrand.length) {
            throw IllegalArgumentException("left and right strands must be of equal length")
        }

        var d = 0
        leftStrand.forEachIndexed { i, ch ->
            if (ch != rightStrand[i]) {
                ++d
            }

        }

        return d

    }
}
