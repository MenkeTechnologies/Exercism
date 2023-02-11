const std = @import("std");

pub fn twoFer(buf: []u8, name: ?[]const u8) ![]u8 {
    return std.fmt.bufPrint(buf, "One for {s}, one for me.", .{name orelse "you"});
}
