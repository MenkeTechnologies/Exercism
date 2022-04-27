import kotlin.math.pow

object HandshakeCalculator {
    infix fun Int.ex(exponent: Int): Int = toDouble().pow(exponent).toInt()

    fun calculateHandshake(m: Int): List<Signal> {
        val l = Signal.values().filter {  2 ex it.ordinal and m > 0 }
        return if (16 and m > 0) l.reversed() else l
    }

}
