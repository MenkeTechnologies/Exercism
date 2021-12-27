object Acronym {

    fun generate(phrase: String): String {

        return phrase.toUpperCase().replace(Regex("[-_]"), " ").split(Regex("\\s+"))
            .map { it[0] }.joinToString("")

    }
}
