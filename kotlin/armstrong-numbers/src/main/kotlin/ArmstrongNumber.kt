import kotlin.math.pow

object ArmstrongNumber {

    fun check(input: Int): Boolean {
        val ary = input.toString().map{ it.toString()}

        return ary.map { it.toDouble().pow(ary.size) }.sum().toInt() == input

    }

}
