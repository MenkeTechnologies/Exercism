class BaseConverter(private val inBase: Int, digits: IntArray) {

    private val sum = digits.fold(0) { acc, n -> acc * inBase + n }

    init {
        require(inBase > 1) { "Bases must be at least 2." }
        require(digits.isNotEmpty()) { "You must supply at least one digit." }
        require(digits[0] != 0 || digits.size == 1) { "Digits may not contain leading zeros." }
        require(digits.all { it >= 0 }) { "Digits may not be negative." }
        require(digits.all { it < inBase }) { "All digits must be strictly less than the base." }
    }

    fun convertToBase(outBase: Int): IntArray {
        require(outBase > 1) { "Bases must be at least 2." }
        if (sum < 1) {
            return intArrayOf(0)
        }
        var dup = sum
        val result = mutableListOf<Int>()
        while (dup > 0) {
            result.add(0, dup % outBase)
            dup /= outBase
        }
        return result.toIntArray()
    }
}
