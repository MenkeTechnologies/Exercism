class RotationalCipher {
    private int key

    RotationalCipher(int key) {
        this.key = key
    }

    String rotate(String cipherText) {

        cipherText.chars().collect {
            if (Character.isUpperCase(it)) {
                rot(it, 'A' as char)
            } else if (Character.isLowerCase(it)) {
                rot(it, 'a' as char)
            } else it
        }.collect { it as char }.join("")

    }

    def rot(int ch, char start) {
        (ch - start + key) % 26 + start
    }
}
