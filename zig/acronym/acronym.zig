const std = @import("std");
const mem = std.mem;
const ascii = std.ascii;

pub fn abbreviate(allocator: mem.Allocator, str: []const u8) mem.Allocator.Error![]u8 {
    var array = std.ArrayList(u8).init(allocator);
    var prev: u8 = ' ';
    for (str) |c| {
        if (!isSeparator(c) and !ascii.isAlpha(c)) {
            continue;
        }
        if (isSeparator(prev) and !isSeparator(c)) {
            try array.append(ascii.toUpper(c));
        }
        prev = c;
    }
    return array.toOwnedSlice();
}
fn isSeparator(c: u8) bool {
    return c == '-' or ascii.isSpace(c);
}
