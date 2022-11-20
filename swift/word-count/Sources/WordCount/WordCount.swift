struct WordCount {
    let words: String

    func count() -> [String: Int] {
        words.split { !$0.isLetter && !$0.isNumber }
                .reduce(into: [:]) { acc, w in
                    acc[String(w).lowercased(), default: 0] += 1
                }
    }
}
