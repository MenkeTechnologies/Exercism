class SumOfMultiples {

    static int sum(List<Integer> factors, int limit) {
        factors.removeIf{it == 0}
        (1..<limit).findAll {f -> factors.any{ f % it == 0}}.sum(0) as int
    }
}
