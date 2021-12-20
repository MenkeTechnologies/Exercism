class IsbnVerifier {

    fun isValid(number: String): Boolean {
        val r = Regex("""^\d-?\d{3}-?\d{5}-?[\dX]$""")

        if (!r.matches(number)) {
            return false
        }

        return number.reversed()
                .filter { it.isLetterOrDigit() }
                .withIndex()
                .map {
                    if (it.value == 'X') 10 else Character.getNumericValue(it.value) * (it.index + 1)
                }.sum() % 11 == 0

    }
}
