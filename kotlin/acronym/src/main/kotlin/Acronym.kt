object Acronym {
    fun generate(phrase: String) : String {
        val str = phrase.replace(Regex("[-_]"), " ").toUpperCase()

        var end = ""

        for (ch in str.split(Regex("\\s+"))) {
            end += ch[0]
        }

        return end
    }
}
