class Series(val input: String) {
    init {
        require(input.all { it.isDigit() })
    }
    fun getLargestProduct(span: Int) = when {
        span == 0 -> 1L
        span > input.length -> throw IllegalArgumentException()
        else -> input.windowed(span).maxOf {
            it.fold(1) { acc, n -> acc * Character.getNumericValue(n) }
        }.toLong()
    }
}
