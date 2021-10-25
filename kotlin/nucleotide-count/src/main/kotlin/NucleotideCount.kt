class Dna(dnaStr: String) {

    val nucleotideCounts = mutableMapOf('A' to 0, 'C' to 0, 'G' to 0, 'T' to 0)

    init {

        dnaStr.chars().forEach {
            val key = it.toChar()
            require(nucleotideCounts.containsKey(key))
            nucleotideCounts[key] = nucleotideCounts[key]!!.inc()
        }
    }

}
