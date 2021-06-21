import kotlin.math.ceil
import kotlin.math.pow
import kotlin.math.sqrt

object Darts {

    fun score(x: Number, y: Number): Int {

        val dist = ceil(sqrt(x.toDouble().pow(2) + y.toDouble().pow(2)))

        return when (dist.toInt()) {
            in 0..1 -> 10
            in 2..5 -> 5
            in 6..10 -> 1
            else -> 0
        }

    }
}
