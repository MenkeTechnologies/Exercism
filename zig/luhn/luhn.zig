const std = @import("std");

pub fn isValid(comptime s: []const u8) bool {
    comptime var replacementSize = std.mem.replacementSize(u8, s, " ", "");
    var nows: [replacementSize]u8 = undefined;
    _ = std.mem.replace(u8, s, " ", "", &nows);
    std.mem.reverse(u8, &nows);

    if (nows.len < 2) {
        return false;
    }

    var sum: usize = 0;

    for (nows) |c, i| {
        var digit = std.fmt.charToDigit(c, 10) catch return false;
        if (i % 2 == 1) {
            digit *= 2;
            if (digit > 9) {
                digit -= 9;
            }
        }
        sum += digit;
    }

    return sum % 10 == 0;
}
