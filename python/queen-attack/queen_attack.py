class Queen:
    def __init__(self, row, column):

        if column > 7:
            raise ValueError("column not on board")
        if column < 0:
            raise ValueError("column not positive")
        if row > 7:
            raise ValueError("row not on board")
        if row < 0:
            raise ValueError("row not positive")
        self.row = row
        self.column = column

    def can_attack(self, another_queen):
        if another_queen.column == self.column and another_queen.row == self.row:
            raise ValueError("Invalid queen position: both queens in the same square")

        dy = abs(self.row - another_queen.row)
        dx = abs(self.column - another_queen.column)

        return dx == 0 or dy == 0 or dx == dy
