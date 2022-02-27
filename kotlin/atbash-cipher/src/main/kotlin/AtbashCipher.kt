object Atbash {

    private fun tr(s: String, map: Map<Char, Char>) =
        s.toLowerCase().filter { it.isLetterOrDigit() }.map { if (it.isDigit()) it else map[it] }.joinToString("")

    fun encode(s: String) = tr(s, ('a'..'z').zip('z' downTo 'a').toMap())
        .chunked(5).joinToString(" ")

    fun decode(s: String) = tr(s, ('z' downTo 'a').zip('a'..'z').toMap())
}
