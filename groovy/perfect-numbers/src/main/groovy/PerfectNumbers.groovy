class PerfectNumbers {

    static Classification classify(int num) {

        if (num == 1) {
            return Classification.DEFICIENT
        }
        if (num <= 0) {
            throw new ArithmeticException()
        }

        def upper = num - 1
        def sum = (1..upper).findAll { num % it == 0 }.sum()

        if (sum == num) {
            Classification.PERFECT
        } else if (sum < num) {
            Classification.DEFICIENT

        } else {
            Classification.ABUNDANT

        }

    }
}
