import static java.lang.Math.pow

class DifferenceOfSquares {

    private int num

    DifferenceOfSquares(num) {
        this.num = num
    }

    def squareOfSum() {
        pow((1..num).sum() as double, 2)
    }

    def sumOfSquares() {
        (1..num).collect { it * it }.sum()
    }

    def difference() {
       squareOfSum() - sumOfSquares()
    }

}
