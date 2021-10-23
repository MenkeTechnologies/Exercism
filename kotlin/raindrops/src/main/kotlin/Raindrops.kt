object Raindrops {

    private val sounds = mapOf(3 to "Pling", 5 to "Plang", 7 to "Plong")

    fun convert(n: Int): String = buildString {

        sounds.forEach{
            if (it.key % n == 0) {
                append(it.value)
            }
        }
        if (isEmpty()) append(n)
    }
}
