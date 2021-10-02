import kotlin.math.pow

object HandshakeCalculator {
    infix fun Int.`**`(exponent: Int): Int = toDouble().pow(exponent).toInt()

    fun calculateHandshake(number: Int): List<Signal> {
        var toList = Signal.values().filter {
            it.ordinal == 0 && number and 1 > 0 ||
                    2 `**` it.ordinal and number > 0
        }.toList()

        if (number and 16 > 0) {
            toList = toList.reversed()
        }

        return toList

    }
}
