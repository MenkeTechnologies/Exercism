class Series(val input: String) {
    init {
        require(input.all { it.isDigit() })
    }
    fun getLargestProduct(span: Int) = when {
        span == 0 -> 1L
        span > input.length -> throw IllegalArgumentException()
        else -> input.map(Character::getNumericValue).windowed(span).maxOf {
            it.reduce { acc, n -> acc * n }.toLong()
        }
    }
}
