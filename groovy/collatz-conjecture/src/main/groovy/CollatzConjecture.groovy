class CollatzConjecture {

    static int steps(int number) {

        if (number <= 0) {
            throw new ArithmeticException()
        }

        int steps = 0

        while (number != 1) {
            if (number % 2 == 0) {
                number /= 2
            } else {
                number = 3 * number + 1
            }

            ++steps
        }

        steps

    }
}
