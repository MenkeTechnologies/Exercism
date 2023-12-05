class Pangram {

    static lowerCase(c) {
        var ord = c.codePoints[0]
            if (ord >= 65 && ord <= 90) {
                return String.fromCodePoint(ord + 32)
            }
        return c
    }
    static toLowerCase(s) {
        return s.map {|c| lowerCase(c)}.join("")
    }


    static isPangram(s) {

        for (c in "abcdefghijklmnopqrstuvwxyz") {
            if (!toLowerCase(s).contains(c)){
                return false
            }
        }
        return true
    }
}

