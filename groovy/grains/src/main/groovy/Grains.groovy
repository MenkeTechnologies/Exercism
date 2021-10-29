class Grains {
    static square(num) {
        if (num <= 0 || num > 64) {
            throw new ArithmeticException()
        }
        2**(num - 1)
    }

    static total() {
        (1..64).collect { square(it) }.sum()
    }
}
