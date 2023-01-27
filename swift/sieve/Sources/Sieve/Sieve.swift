struct Sieve {
    var primes = [Int]()

    init(_ num: Int) {
        guard num > 2 else {
            return
        }
        var numbers: [Int?] = Array(2...num)
        (2...num).forEach{
            stride(from: 2 * $0 - 2, through: num - 2, by: $0).forEach{ numbers[$0] = nil}
        }
        primes = numbers.compactMap {$0}
    }
}
