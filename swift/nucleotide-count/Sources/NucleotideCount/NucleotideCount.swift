class DNA {

    private var map = ["T": 0, "A": 0, "C": 0, "G": 0]

    public init?(strand: String) {

        if strand.contains(where: { map[String($0)] == nil }) {
            return nil
        }

        strand.map { String($0) }.forEach { map[$0]! += 1 }
    }

    public func count(_ s: String) -> Int {
        map[s]!
    }

    public func counts() -> [String: Int] {
        map
    }
}
