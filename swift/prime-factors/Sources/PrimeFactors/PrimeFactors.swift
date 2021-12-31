//Solution goes in Sources

class PrimeFactors {

    var toArray: [Int] = []

    public init(_ i: Int) {
        var div = 2
        var dup = i

        while dup > 1 {

            while dup % div == 0 {
                dup /= div
                toArray.append(div)
            }

            div += 1

        }


    }
}
