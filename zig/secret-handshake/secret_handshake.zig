const std = @import("std");
const mem = std.mem;

pub const Signal = enum(u4) {
    wink = 1,
    double_blink = 2,
    close_your_eyes = 4,
    jump = 8,
};
pub const signalValues = std.enums.values(Signal);

pub fn calculateHandshake(allocator: mem.Allocator, number: isize) mem.Allocator.Error![]const Signal {
    var result = std.ArrayList(Signal).init(allocator);
    for (signalValues) |signal| {
        if (number & @enumToInt(signal) > 0) {
            try result.append(signal);
        }
    }
    if (number & 16 > 0) {
        mem.reverse(Signal, result.items);
    }
    return result.items;
}
