NORTH = (0, 1)
EAST = (1, 0)
SOUTH = (0, -1)
WEST = (-1, 0)
DIRECTIONS = [NORTH, EAST, SOUTH, WEST]

class Robot:
    def __init__(self, direction=NORTH, x=0, y=0):
        self.direction = direction
        self.x = x
        self.y = y

    @property
    def coordinates(self):
        return self.x, self.y

    def move(self, path):
        for move in path:
            if move == "A":
                self.x += self.direction[0]
                self.y += self.direction[1]
            if move == "L":
                self.direction = DIRECTIONS[(DIRECTIONS.index(self.direction) + 3) % 4]
            elif move == "R":
                self.direction = DIRECTIONS[(DIRECTIONS.index(self.direction) + 1) % 4]
