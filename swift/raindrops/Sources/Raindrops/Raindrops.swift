//Solution goes in Sources

class Raindrops {

    public let sounds: String

    public init(_ i: Int) {

        var r = ""
        if i % 3 == 0 {
            r += "Pling"
        }

        if i % 5 == 0 {
            r += "Plang"
        }

        if i % 7 == 0 {
            r += "Plong"
        }

        if r.isEmpty {
            r = "\(i)"
        }

        sounds = r

    }


}
