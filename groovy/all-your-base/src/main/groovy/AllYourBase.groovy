class AllYourBase {
    private Integer value

    AllYourBase(int inputBase, List<Integer> digits) {
        if (inputBase < 2) throw new ArithmeticException()
        digits.forEach { if (it < 0 || it >= inputBase) throw new ArithmeticException() }
        value = digits.inject(0) { acc, n -> acc * inputBase + n }
    }

    Collection<Integer> rebase(int outputBase) {
        if (outputBase < 2) throw new ArithmeticException()
        if (value == 0) return [0]

        def res = []
        while (value > 0) {
            res.add(0, value % outputBase)
            value = value.intdiv(outputBase)
        }
        res
    }
}
