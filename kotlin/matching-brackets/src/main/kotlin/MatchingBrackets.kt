object MatchingBrackets {

    val map = mapOf('[' to ']', '{' to '}', '(' to ')')

    fun isValid(input: String): Boolean {
        val stk = mutableListOf<Char>()

        input.forEach {
            if (map.containsKey(it)) {
                stk += it
            } else if (map.values.contains(it)) {
                if (stk.isEmpty() || map[stk.removeAt(stk.lastIndex)] != it) {
                    return false
                }
            }
        }

        return stk.isEmpty()

    }
}
