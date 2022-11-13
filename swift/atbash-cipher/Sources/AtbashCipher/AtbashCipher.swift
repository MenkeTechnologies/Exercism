func encode(_ plaintext: String) -> String {
    let alphabet = "abcdefghijklmnopqrstuvwxyz",
            sBox = Dictionary(uniqueKeysWithValues: zip(alphabet, alphabet.reversed()))
    let ct = plaintext.lowercased().lazy.filter {
                $0.isLetter || $0.isNumber
            }
            .map {
                sBox[$0] ?? $0
            }
    var result = [String](), ctext = ct[...]
    while !ctext.isEmpty {
        result.append(String(ctext.prefix(5)))
        ctext = ctext.dropFirst(5)
    }
    return result.joined(separator: " ")
}
