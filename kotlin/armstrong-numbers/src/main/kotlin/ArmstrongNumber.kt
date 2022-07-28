import kotlin.math.pow

object ArmstrongNumber {

    fun check(input: Int) = input.toString()
            .map {
                it.toString().toDouble()
                    .pow(input.toString().length)
                    .toInt()
            }.sum() == input

}
