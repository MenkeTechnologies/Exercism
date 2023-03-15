import kotlin.math.ceil
import kotlin.math.pow
import kotlin.math.sqrt

object Darts {

    fun score(x: Number, y: Number) =
        when (ceil(sqrt(x.toDouble().pow(2) + y.toDouble().pow(2))).toInt()) {
            in 0..1 -> 10
            in 2..5 -> 5
            in 6..10 -> 1
            else -> 0
        }
}
