const absCast = @import("std").math.absCast;

pub const QueenError = error{
    InitializationFailure,
};
pub const Queen = struct {
    x: i8,
    y: i8,

    pub fn init(row: i8, column: i8) QueenError!Queen {
        if (row >= 0 and row < 8 and column >= 0 and column < 8) {
            return Queen{ .x = row, .y = column };
        }
        return QueenError.InitializationFailure;
    }

    pub fn canAttack(self: *const Queen, other: Queen) !bool {
        const dx = absCast(self.x - other.x);
        const dy = absCast(self.y - other.y);
        return dx == 0 or dy == 0 or dx == dy;
    }
};
