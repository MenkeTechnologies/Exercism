class LargestSeriesProduct {
    static largestProduct(digitsString, span) {
        if (span == 0) return 1
        if (span < 0) throw new IllegalArgumentException("span must not be negative")
        if (digitsString.size() < span) throw new IllegalArgumentException("span must be smaller than string length")
        if (digitsString.toCharArray().any { !Character.isDigit(it) }) throw new IllegalArgumentException("digits input must only contain digits")
        return digitsString.toCharArray()
                .collect { Character.getNumericValue(it) }
                .collate(span, 1, false)
                .collect { it.inject(1) { acc, n -> acc * n } }
                .max()
    }
}
