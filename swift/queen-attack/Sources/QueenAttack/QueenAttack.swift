class Queens: CustomStringConvertible {

    public let white: [Int]
    public let black: [Int]

    public var description: String {

        let row = Array(repeating: "_", count: 8)
        var brd = Array(repeating: row, count: 8)

        brd[white[0]][white[1]] = "W"
        brd[black[0]][black[1]] = "B"

        return brd.map {
            $0.joined(separator: " ")
        }.joined(separator: "\n")
    }

    public var canAttack: Bool {

        let dx = abs(white[0] - black[0])
        let dy = abs(white[1] - black[1])

        return dx == 0 || dy == 0 || dx == dy
    }

    enum InitError: Error {
        case invalidCoordinates
        case sameSpace
        case incorrectNumberOfCoordinates
    }

    public init(white: [Int] = [0, 3], black: [Int] = [7, 3]) throws {

        if white.count > 2 {
            throw InitError.incorrectNumberOfCoordinates
        }

        if white == black {
            throw InitError.sameSpace
        }

        if white.contains(where: { $0 < 0 || $0 > 7 }) ||
                   black.contains(where: { $0 < 0 || $0 > 7 }) {
            throw InitError.invalidCoordinates
        }

        self.white = white
        self.black = black
    }
}
