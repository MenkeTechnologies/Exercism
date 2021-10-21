import java.math.BigInteger
import java.math.BigInteger.*

object Board {

    fun getGrainCountForSquare(number: Int): BigInteger {

        require(number in 1..64)
        return TWO.pow(number - 1)
    }

    fun getTotalGrainCount(): BigInteger =
        (1..64).map { getGrainCountForSquare(it) }.fold(ZERO, BigInteger::add)
}
