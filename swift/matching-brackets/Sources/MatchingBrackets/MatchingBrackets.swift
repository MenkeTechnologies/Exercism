let dict: [Character: Character] = [
    "(" : ")",
    "{" : "}",
    "[" : "]",
]

func paired(s: String) -> Bool {
    var stk = [Character]()
    for c in s {
        if dict.keys.contains(c) {
            stk.append(c)
        } else if dict.values.contains(c) {
            guard let opening = stk.popLast(), c == dict[opening] else {
                return false
            }
        }
    }
    return stk.isEmpty
}
