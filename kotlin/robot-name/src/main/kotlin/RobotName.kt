val map = mutableMapOf<String, Int>()

class Robot {

    var name = ""

    init {
        name = gen()

    }

    private fun gen(): String {

        while (true) {
            var n = ""
            n += ('A'..'Z').random()
            n += ('A'..'Z').random()
            (0..2).forEach() { n += (0..9).random() }

            if (!map.containsKey(n)) {
                map[n] = 1
                return n
            }
        }
    }


    fun reset() {
        name = gen()

    }
}
