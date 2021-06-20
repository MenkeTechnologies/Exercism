fun transcribeToRna(dna: String): String {

    var res = ""
    for (char in dna.toCharArray()) {
        res += xform(char)
    }

    return res
}

private fun xform(char: Char): Char {
    if (char == 'G') {
        return 'C'
    } else if (char == 'C') {
        return 'G'
    } else if (char == 'T') {
        return 'A'
    } else if (char == 'A') {
        return 'U'
    } else {
        throw RuntimeException("invalid dna $char")
    }
}
