const std = @import("std");
const mem = std.mem;
const fmt = std.fmt;

pub fn recite(allocator: mem.Allocator, words: []const []const u8) (fmt.AllocPrintError || mem.Allocator.Error)![][]u8 {
    var lines = try allocator.alloc([]u8, words.len);
    var i: usize = 1;
    while (i < words.len) : (i += 1) {
        lines[i - 1] = try fmt.allocPrint(allocator, "For want of a {s} the {s} was lost.\n", .{ words[i - 1], words[i] });
    }
    if (words.len > 0) {
        lines[words.len - 1] = try fmt.allocPrint(allocator, "And all for the want of a {s}.\n", .{words[0]});
    }
    return lines;
}
