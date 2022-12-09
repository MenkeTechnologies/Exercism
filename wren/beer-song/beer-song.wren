class BeerSong {
    static verse(n) {
        if (n == 0) {
            return [
                "No more bottles of beer on the wall, no more bottles of beer.",
                "Go to the store and buy some more, 99 bottles of beer on the wall.",
            ]
        } else if (n == 1) {
            return [
                "1 bottle of beer on the wall, 1 bottle of beer.",
            "Take it down and pass it around, no more bottles of beer on the wall.",
            ]
        } else {
            var plural = n > 2 ? "s" : ""
                return [
                "%(n) bottles of beer on the wall, %(n) bottles of beer.",
            "Take one down and pass it around, %(n - 1) bottle%(plural) of beer on the wall.",
                ]
        }
    }
    static recite(start, count) {
        return (start...(start - count)).reduce([]) { |acc, n|
            if (n != start) acc.add("")
                acc.addAll(verse(n))
                    return acc
        }
    }
}
