object MatchingBrackets {

    val map = mapOf("[" to "]", "{" to "}", "(" to ")")

    fun isValid(input: String): Boolean {
        val stk = mutableListOf<String>()

        val remain = input.split("")
            .dropWhile {
                if (map.containsKey(it)) {
                    stk += it
                } else if (map.values.contains(it)) {
                    if (stk.isEmpty() || map[stk.removeAt(stk.lastIndex)] != it) {
                        return@dropWhile false
                    }
                }
                return@dropWhile true
            }.toList()

        return stk.isEmpty() && remain.isEmpty()

    }
}
