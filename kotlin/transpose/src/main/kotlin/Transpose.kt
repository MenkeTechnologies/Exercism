object Transpose {

    fun transpose(input: List<String>) =
        (0 until (input.map { it.length }.max() ?: 0)).map { i ->
            input.map { it.getOrNull(i) }.dropLastWhile { it == null }
                .map { it ?: ' ' }.joinToString("")
        }
}
