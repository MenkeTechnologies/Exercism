class RnaTranscription {

    static def map = [
            A: "U",
            G: "C",
            C: "G",
            T: "A"
    ]

    static String toRna(String strand) {
        strand.toUpperCase().chars.collect { map[it as String] }.join()

    }
}
