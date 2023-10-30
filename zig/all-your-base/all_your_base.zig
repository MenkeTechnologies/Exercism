const std = @import("std");
pub const ConversionError = error{ InvalidInputBase, InvalidOutputBase, InvalidDigit };

pub fn convert(allocator: std.mem.Allocator, digits: []const u32, in_base: u32, out_base: u32) ![]u32 {
    if (in_base < 2) return error.InvalidInputBase else if (out_base < 2) return error.InvalidOutputBase;

    var acc: u32 = 0;

    for (digits) |d| {
        if (d >= in_base) return error.InvalidDigit;
        acc = acc * in_base + d;
    }
    var lst = if (acc > 0) std.ArrayList(u32).init(allocator) else return allocator.dupe(u32, &.{0});
    while (acc > 0) : (acc /= out_base) try lst.insert(0, acc % out_base);
    return lst.toOwnedSlice();
}
