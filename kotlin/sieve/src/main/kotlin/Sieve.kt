import kotlin.math.sqrt

object Sieve {
    fun primesUpTo(limit: Int): List<Int> {
        val primes = (2..limit).toMutableList()
        (2..sqrt(limit.toDouble()).toInt()).forEach { i -> primes.removeAll { it in i * 2..limit step i } }
        return primes
    }
}
