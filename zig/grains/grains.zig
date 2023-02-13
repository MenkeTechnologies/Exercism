const math = @import("std").math;
pub const ChessboardError = error{
    IndexOutOfBounds,
};
pub fn square(index: isize) ChessboardError!u64 {
    if (index < 1 or index > 64) return ChessboardError.IndexOutOfBounds;
    return math.powi(u64, 2, @intCast(u64, index) - 1) catch unreachable;
}
pub fn total() u64 {
    return math.maxInt(u64);
}
