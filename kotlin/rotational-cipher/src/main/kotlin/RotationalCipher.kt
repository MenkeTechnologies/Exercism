class RotationalCipher(val rot: Int) {

    fun encode(text: String): String {

        return text.toCharArray().map {

            if (it.isLetter()) {
                if (it.isUpperCase()) {
                    rot(it, 'A')
                } else {
                    rot(it, 'a')
                }
            } else {
                it
            }
        }.joinToString("")

    }

    private fun rot(it: Char, c: Char) = ((it - c + rot) % 26 + c.toInt()).toChar()
}
