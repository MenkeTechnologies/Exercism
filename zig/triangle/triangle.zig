const std = @import("std");

pub const TriangleError = error{Invalid};

pub const Triangle = struct {
    sides: [3]f64,
    pub fn init(a: f64, b: f64, c: f64) TriangleError!Triangle {
        var sides = [3]f64{ a, b, c };
        std.sort.sort(f64, &sides, {}, comptime std.sort.asc(f64));
        if (sides[0] + sides[1] <= sides[2] or sides[0] <= 0) {
            return TriangleError.Invalid;
        }
        return Triangle{ .sides = sides };
    }
    pub fn isEquilateral(self: Triangle) bool {
        return self.sides[0] == self.sides[2];
    }
    pub fn isIsosceles(self: Triangle) bool {
        return self.sides[0] == self.sides[1] or self.sides[1] == self.sides[2];
    }
    pub fn isScalene(self: Triangle) bool {
        return self.sides[0] != self.sides[1] and self.sides[1] != self.sides[2];
    }
};
