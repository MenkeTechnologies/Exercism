class Triangle {

    public var kind: String = ""

    public init(_ i: Double, _ i2: Double, _ i3: Double) {
        let doubles = [i, i2, i3].sorted()

        doubles.forEach {
            if $0 <= 0 {
                kind = "ErrorKind"
            }
        }

        if doubles[0] + doubles[1] < doubles[2] {
            kind = "ErrorKind"
        }

        if !kind.isEmpty {
            return
        }

        let s = Set(doubles)

        if s.count == 1 {
            kind = "Equilateral"
        } else if s.count == 3 {
            kind = "Scalene"
        } else {
            kind = "Isosceles"
        }

    }
}
