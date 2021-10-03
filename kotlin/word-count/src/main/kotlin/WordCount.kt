object WordCount {

    fun phrase(phrase: String): Map<String, Int> {

        val m = mutableMapOf<String, Int>()

        phrase.toLowerCase()
            .replace(Regex("""(?!\w|'t\b)."""), " ")
            .trim().split(Regex("""\s+"""))
            .forEach { m[it] = m.getOrDefault(it, 0) + 1 }

        return m


    }
}
