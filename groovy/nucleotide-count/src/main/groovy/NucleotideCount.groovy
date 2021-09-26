class NucleotideCount {

    static count(String strand) {
        def map = [
                A: 0,
                G: 0,
                C: 0,
                T: 0
        ]

        strand.chars.each { map[it as String]++ }

        map
    }
}
