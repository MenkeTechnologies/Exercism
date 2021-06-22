object Pangram {

    fun isPangram(input: String): Boolean {
        val lc = input.toLowerCase()
        for (ch in ('a'..'z')) {
            if (!lc.contains(ch)) {
                return false
            }
        }

        return true
    }
}
