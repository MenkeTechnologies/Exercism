class Matrix(private val matrixAsString: String) {

    fun column(colNr: Int) =
        matrixAsString.split("\n").fold(mutableListOf(mutableListOf<Int>())) { acc, n ->
            n.trim().split(Regex("\\s+")).withIndex().forEach {
                if (acc.getOrNull(it.index) == null) {
                    acc.add(mutableListOf())
                }
                acc[it.index].add(it.value.toInt())
            }
            acc
        }[colNr - 1]

    fun row(rowNr: Int) = matrixAsString.trim().split("\n")
        .map { it.split(Regex("\\s+")).map { it.toInt() } }[rowNr - 1]
}
