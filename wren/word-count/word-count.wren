class Words {
    static sanitize(word) {
        return word
            .trim("!\"#$\%&'()*+ -./:;<=>?@[\\]^_`{|}~")
            .trim()
    }
    static sanitizeSentence(s) {
        return s
            .replace(",", " ")
            .replace("\n", " ")
            .replace("\t", " ")
    }

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
    static calculateWordFrequency(sanitized) {
        var dict = {}
        for (word in sanitized.split(" ")) {
            var lcTrim = sanitize(toLowerCase(word.trim().trim("'").trim()))
            if (lcTrim != "") {
                if (dict.containsKey(lcTrim)) {
                    dict[lcTrim] = dict[lcTrim] + 1
                } else {
                    dict[lcTrim] = 1
                }
            }
        }
        return dict
    }
    static count(s) {
        return calculateWordFrequency(sanitizeSentence(s))
    }
}

