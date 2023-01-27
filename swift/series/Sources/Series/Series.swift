struct Series {
    var input: [Int]

    init(_ input: String) {
        self.input = input.map { Int(String($0))! }
    }

    func slices(_ number: Int) -> [[Int]] {
        guard number <= input.count else {
            return []
        }
        return (0...input.count - number).map {
            Array(input[$0..<($0 + number)])
        }
    }
}
