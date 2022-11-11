struct Pangram {
    static func isPangram(_ s: String) -> Bool {
        "abcdefghijklmopqrstuvwxyz".allSatisfy({ s.lowercased().contains($0) })
    }
}

