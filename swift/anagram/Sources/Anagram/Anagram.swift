class Anagram {

    var lc: String
    var sorted: [Character]

    init(word: String) {
        lc = word.lowercased()
        sorted = lc.sorted()
    }

    public func match(_ strings: [String]) -> [String] {
        strings.filter {
            lc != $0.lowercased() && sorted == $0.lowercased().sorted()
        }
    }
}
