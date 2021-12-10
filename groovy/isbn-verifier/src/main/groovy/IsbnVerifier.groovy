class IsbnVerifier {
    static boolean isValid(String isbn) {
        if (!isbn.matches(/^\d-?\d{3}-?\d{5}-?[\dX]$/)) {
            return false
        }
        isbn.reverse().collect{it as char}.findAll { it.letterOrDigit }.withIndex().collect { ch, i ->
            ch == 'X' ? 10 : Character.getNumericValue(ch) * (i + 1)
        }.sum() % 11 == 0
    }
}
