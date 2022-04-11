object Prime {

    fun nth(n: Int): Int {
        require(n > 0) { "There is no zeroth prime." }
        if (n == 1) return 2

        return generateSequence(3) { it + 2 }
            .filter { f -> (3..f / 2).none { f % it == 0 } }
            .take(n - 1).last()

    }
}
