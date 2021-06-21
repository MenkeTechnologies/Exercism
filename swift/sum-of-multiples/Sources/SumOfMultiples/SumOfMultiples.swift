//Solution goes in Sources

class SumOfMultiples {

    static func toLimit(_ limit: Int, inMultiples: [Int]) -> Int {

        (0..<limit).filter {
            for item in inMultiples.filter { $0 != 0 } {
                if $0 % item == 0 {
                    return true
                }
            }
            return false
        }.reduce(0, +)
    }
}