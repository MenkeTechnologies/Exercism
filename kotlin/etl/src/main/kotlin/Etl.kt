object ETL {
    fun transform(source: Map<Int, Collection<Char>>): Map<Char, Int> =
        source.entries.fold(mutableMapOf()) { acc, n ->
            n.value.forEach { acc[it.toLowerCase()] = n.key }
            acc
        }
}
