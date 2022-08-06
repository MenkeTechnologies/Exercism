class Squares {

    let square: Int

    init(_ square: Int) {
        self.square = square
    }

    public var squareOfSum: Int {
        let s = (0...square).reduce(0, +)
        return s * s
    }

    public var sumOfSquares: Int {
        (0...square).reduce(0, { $0 + $1 * $1 })

    }

    public var differenceOfSquares: Int {
        squareOfSum - sumOfSquares
    }


}
