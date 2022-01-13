object WordCount {

    fun phrase(phrase: String) =
        phrase.toLowerCase()
            .replace(Regex("""(?!\w|'t\b)."""), " ")
            .trim().split(Regex("""\s+"""))
            .groupBy { it }.mapValues { it.value.size }

}
