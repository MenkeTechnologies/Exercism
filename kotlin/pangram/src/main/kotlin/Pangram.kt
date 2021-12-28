object Pangram {

    fun isPangram(input: String): Boolean {
        val lc = input.toLowerCase()

        return ('a'..'z').all { lc.contains(it) }
    }
}
