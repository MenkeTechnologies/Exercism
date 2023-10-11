class Dna(dnaStr: String) {

    val nucleotideCounts = mutableMapOf('A' to 0, 'C' to 0, 'G' to 0, 'T' to 0)

    init {

        dnaStr.forEach {
            nucleotideCounts[it] = nucleotideCounts[it]?.inc() ?: throw IllegalArgumentException()
        }
    }

}
