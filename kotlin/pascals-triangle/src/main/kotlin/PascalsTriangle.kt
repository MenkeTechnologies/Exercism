object PascalsTriangle {

    fun computeTriangle(rows: Int): List<List<Int>> =
        if (rows <= 0) { listOf() } else
        (2..rows).fold(listOf(listOf(1))) { acc, _ ->
            acc + listOf( listOf(1) + acc.last().dropLast(1).withIndex()
                    .map { it.value + acc.last()[it.index + 1] } + listOf(1))
        }
}
