class IsbnVerifier {

    fun isValid(number: String) =
            Regex("""^\d-?\d{3}-?\d{5}-?[\dX]$""").matches(number) &&
                    number.reversed()
                            .filter { it.isLetterOrDigit() }
                            .withIndex()
                            .map {
                                if (it.value == 'X') 10 else Character.getNumericValue(it.value) * (it.index + 1)
                            }.sum() % 11 == 0
}
