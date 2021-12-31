class Matrix(private val matrixAsString: String) {

    fun column(colNr: Int): List<Int> {
        matrixAsString.split("\n")

        return matrixAsString.split("\n").fold(mutableListOf(mutableListOf<Int>())) { acc, n ->
            n.trim().split(Regex("\\s+")).withIndex().forEach {
                if (acc.getOrNull(it.index) == null) {
                    acc.add(mutableListOf())
                }
                acc[it.index].add(it.value.toInt())
            }
            acc
        }[colNr - 1]
    }

    fun row(rowNr: Int): List<Int> {
        return matrixAsString.trim().split("\n").map { it.split(Regex("\\s+")).map { it.toInt() } }[rowNr - 1]
    }
}
