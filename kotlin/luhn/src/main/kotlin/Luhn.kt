object Luhn {

    fun isValid(candidate: String): Boolean {
        val digits = candidate.filter { !it.isWhitespace() }.toList()

        if (digits.size < 2 || digits.any { !it.isDigit() }) {
            return false
        }

        return digits.reversed().map { Character.getNumericValue(it) }
                .withIndex().map {
                    val dbl = if (it.index % 2 == 1) it.value * 2 else it.value

                    if (dbl > 9) dbl - 9 else dbl
                }.sum() % 10 == 0

    }
}
