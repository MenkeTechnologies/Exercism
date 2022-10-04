class Robot(
    var gridPosition: GridPosition = GridPosition(0, 0), var orientation: Orientation = Orientation.NORTH
) {
    private fun turnRight(n: Int = 1) {
        orientation = Orientation.values()[(orientation.ordinal + n) % 4]
    }

    private fun turnLeft() = turnRight(3)

    private operator fun GridPosition.plus(pair: Pair<Int, Int>) =
        GridPosition(x = x + pair.first, y = y + pair.second)

    private fun advance() {
        gridPosition += when (orientation) {
            Orientation.NORTH -> (0 to 1)
            Orientation.SOUTH -> (0 to -1)
            Orientation.EAST -> (1 to 0)
            Orientation.WEST -> (-1 to 0)
        }
    }

    fun simulate(instructions: String) =
        instructions.forEach {
            when (it) {
                'R' -> turnRight()
                'L' -> turnLeft()
                'A' -> advance()
            }
        }
}
