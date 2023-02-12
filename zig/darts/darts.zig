pub const Coordinate = struct {
    x: f32,
    y: f32,

    pub fn init(x: f32, y: f32) Coordinate {
        return Coordinate{ .x = x, .y = y };
    }
    pub fn score(self: Coordinate) isize {
        const dist = @sqrt((self.x * self.x) + (self.y * self.y));
        if (dist > 10) {
            return 0;
        }
        if (dist > 5) {
            return 1;
        }
        if (dist > 1) {
            return 5;
        }
        return 10;
    }
};
