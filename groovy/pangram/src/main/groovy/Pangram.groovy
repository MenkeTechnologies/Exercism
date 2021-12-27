class Pangram {

    static boolean isPangram(String sentence) {

        def lc = sentence.toLowerCase()

        ('a'..'z').every { lc.contains(it) }
    }

}
