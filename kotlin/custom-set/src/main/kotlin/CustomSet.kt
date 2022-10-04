class CustomSet(vararg ary: Int) {
    private val lst = mutableListOf<Int>()

    init {
        lst.addAll(ary.distinct())
    }

    fun isEmpty(): Boolean = lst.isEmpty()
    fun isSubset(other: CustomSet): Boolean = lst.all { other.contains(it) }
    fun isDisjoint(other: CustomSet): Boolean = isEmpty() || intersection(other).isEmpty()
    fun contains(other: Int): Boolean = lst.contains(other)
    fun intersection(other: CustomSet): CustomSet =
        CustomSet(*(lst.filter { other.sort().contains(it) }.toIntArray()))

    fun add(other: Int) {
        if (!lst.contains(other)) lst.add(other)
    }

    override fun equals(other: Any?): Boolean =
        if (other !is CustomSet) false else sort().toIntArray() contentEquals other.sort().toIntArray()

    operator fun plus(other: CustomSet): CustomSet = CustomSet(*((sort() + other.sort()).distinct().toIntArray()))
    operator fun minus(other: CustomSet): CustomSet = CustomSet(*((sort() - other.sort()).toIntArray()))
    private fun sort(): List<Int> = lst.toList().sorted()
}
