const std = @import("std");
pub const ColorBand = enum { black, brown, red, orange, yellow, green, blue, violet, grey, white };
pub fn colorCode(color: ColorBand) isize {
    return @enumToInt(color);
}
pub fn colors() []const ColorBand {
    return std.enums.values(ColorBand);
}
