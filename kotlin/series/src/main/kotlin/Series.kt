object Series {
    fun slices(n: Int, input: String) =
        if (n < 1 || input.isBlank() || n > input.length)
            throw IllegalArgumentException("n must be a positive non-zero integer that is not larger than the length of the input string, and input must be a non-empty string")
        else input.map(Character::getNumericValue).windowed(n)
}
