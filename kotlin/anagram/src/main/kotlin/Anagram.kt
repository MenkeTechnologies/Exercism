class Anagram(word: String) {
    private val lc = word.toLowerCase()

    fun match(anagrams: Collection<String>): Set<String> {

        val s = mutableSetOf<String>()

        anagrams.forEach {
            val lc2 = it.toLowerCase()
            if (lc.toList().sorted() == lc2.toList().sorted() && lc != lc2) {
                s += it

            }
        }

        return s

    }
}
