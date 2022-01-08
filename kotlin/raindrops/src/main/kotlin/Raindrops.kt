object Raindrops {

    private val MAP = mapOf(3 to "Pling", 5 to "Plang", 7 to "Plong")

    fun convert(n: Int) = MAP.filterKeys { n % it == 0 }
        .values.joinToString("").ifEmpty { "$n" }
}
