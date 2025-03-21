import org.junit.Ignore
import org.junit.Test
import java.math.BigInteger
import kotlin.test.assertEquals

class BoardTest {

    @Test
    fun `per square | 1`() = assertGrainsEqual(1, 1)

    
    @Test
    fun `per square | 2`() = assertGrainsEqual(2, 2)

    
    @Test
    fun `per square | 3`() = assertGrainsEqual(3, 4)

    
    @Test
    fun `per square | 4`() = assertGrainsEqual(4, 8)

    
    @Test
    fun `per square | 16`() = assertGrainsEqual(16, 32768)

    
    @Test
    fun `per square | 32`() = assertGrainsEqual(32, 2147483648)

    
    @Test
    fun `per square | 64`() = assertGrainsEqual(64, "9223372036854775808")

    
    @Test(expected = IllegalArgumentException::class)
    fun `invalid input | square 0`() {
        grains(0)
    }

    
    @Test(expected = IllegalArgumentException::class)
    fun `invalid input | negative square`() {
        grains(-1)
    }

    
    @Test(expected = IllegalArgumentException::class)
    fun `invalid input | square after 64`() {
        grains(65)
    }

    
    @Test
    fun `total | all grains on board`() {
        assertEquals(BigInteger("18446744073709551615"), Board.getTotalGrainCount())
    }
}

private fun assertGrainsEqual(cell: Int, expectation: String) =
        assertEquals(BigInteger(expectation), grains(cell))

private fun assertGrainsEqual(cell: Int, expectation: Long) =
        assertEquals(BigInteger.valueOf(expectation), grains(cell))

private fun grains(cell: Int) = Board.getGrainCountForSquare(cell)
