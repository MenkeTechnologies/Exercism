class AtbashCipher {
    static final plain = 'abcdefghijklmnopqrstuvwxyz'
    static final cipher = plain.reverse()

    static String encode(String s) {
        s.toLowerCase()
                .tr(plain, cipher)
                .chars
                .findAll { Character.isLetterOrDigit(it) }
                .collate(5)
                .collect { it.join() }
                .join(' ')
    }

    static String decode(String s) {
        s.tr(plain, cipher)
                .chars
                .findAll { Character.isLetterOrDigit(it) }
                .join()
    }
}
