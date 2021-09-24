import static java.lang.Math.pow

class DifferenceOfSquares {

    private int num

    DifferenceOfSquares(num) {
        this.num = num
    }

    def squareOfSum() {

        int s = 0
        for (int i = 1; i <= num; ++i) {
            s += i
        }

        pow(s, 2)
    }

    def sumOfSquares() {

        int s = 0
        for (int i = 1; i <= num; ++i) {
            s += pow(i, 2)
        }

        s

    }

    def difference() {
       squareOfSum() - sumOfSquares()
    }

}
