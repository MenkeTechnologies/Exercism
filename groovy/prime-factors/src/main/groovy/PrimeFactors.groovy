class PrimeFactors {

    static factors(Long value) {

        def fac = []
        def divisor = 2

        while (value > 1) {
            while (value % divisor == 0) {
                fac << divisor
                value /= divisor
            }
            ++divisor
        }
        fac

    }
}
