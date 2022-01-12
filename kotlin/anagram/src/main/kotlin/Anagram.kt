class Anagram(word: String) {
    private val lc = word.toLowerCase()

    fun match(anagrams: Collection<String>) =
        anagrams.filter {
            val lc2 = it.toLowerCase()
            lc.toList().sorted() == lc2.toList().sorted() && lc != lc2
        }.toSet()

}
