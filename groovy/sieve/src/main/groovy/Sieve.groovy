class Sieve {

    static primes(Integer limit) {
        if (limit < 2) {
            return []
        }
        def numbers = (2..limit).toList()
        def res = []
        while (!numbers.isEmpty()) {
            def head = numbers.get(0)
            res.add(head)
            numbers.removeIf {it % head == 0 }
        }

        res
    }

}
