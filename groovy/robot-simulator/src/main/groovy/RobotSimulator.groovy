class RobotSimulator {

    def pos_x, pos_y
    def direction
    def movements = [
            'north': ['x': 0, 'y': 1],
            'east' : ['x': 1, 'y': 0],
            'south': ['x': 0, 'y': -1],
            'west' : ['x': -1, 'y': 0]
    ]

    RobotSimulator(int pos_x, int pos_y, String direction) {
        this.pos_x = pos_x
        this.pos_y = pos_y
        this.direction = direction
    }

    void move(String commands) {
        commands.each {
            if (it == 'R') {
                direction = getNewDirection('right')
            } else if (it == 'L') {
                direction = getNewDirection('left')
            } else {
                pos_x += movements[direction].x
                pos_y += movements[direction].y

            }
        }
    }

    private String getNewDirection(String turn) {
        int currentIndex = movements.keySet().toList().indexOf(direction)
        int newIndex = turn == 'right' ? (currentIndex + 1) % 4 : (currentIndex + 3) % 4
        movements.keySet().toList()[newIndex]
    }
}
