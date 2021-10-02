class Triangle<out T : Number>(val a: T, val b: T, val c: T) {

    val sides = listOf(a, b, c)
    val uniq = sides.distinct()
    val sorted = sides.map { it.toDouble() }.sorted()

    init {
        require(sorted.all { it > 0}.and(sorted[0] + sorted[1] >= sorted[2]))
    }

    val isEquilateral: Boolean =  uniq.size == 1
    val isIsosceles: Boolean = uniq.size <= 2
    val isScalene: Boolean = uniq.size == 3
}
