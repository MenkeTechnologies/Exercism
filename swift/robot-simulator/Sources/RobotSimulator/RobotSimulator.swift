class SimulatedRobot {
    enum Bearing {
        case north
        case south
        case east
        case west
    }

    enum State: Character {
        case turnLeft = "L"
        case turnRight = "R"
        case advance = "A"
    }

    private let directions = [Bearing.north, .east, .south, .west]

    public var bearing = Bearing.east

    public var coordinates = [0, 0]

    public func orient(_ bearing: Bearing) {

        self.bearing = bearing
    }

    public func at(x: Int, y: Int) {
        coordinates = [x, y]
    }

    public func advance() {
        let x = coordinates[0]
        let y = coordinates[1]
        switch bearing {
            case .north: at(x: x, y: y + 1)
            case .south: at(x: x, y: y - 1)
            case .east: at(x: x + 1, y: y)
            case .west: at(x: x - 1, y: y)
        }

    }

    public func instructions(_ str: String) -> [State] {
        str.compactMap {
            State(rawValue: $0)
        }
    }

    public func place(x: Int, y: Int, direction: Bearing) {

        at(x: x, y: y)
        orient(direction)
    }

    public func evaluate(_ str: String) {

        instructions(str).forEach {
            switch $0 {
                case .advance: advance()
                case .turnLeft: turnLeft()
                case .turnRight: turnRight()
            }
        }
    }

    public func turnRight() {

        if var idx = directions.firstIndex(of: bearing) {
            idx += 1
            if idx == directions.count {
                idx = 0
            }
            bearing = directions[idx]
        }

    }

    public func turnLeft() {

        if var idx = directions.firstIndex(of: bearing) {
            idx -= 1
            if idx == -1 {
                idx = directions.count - 1
            }
            bearing = directions[idx]
        }

    }
}
