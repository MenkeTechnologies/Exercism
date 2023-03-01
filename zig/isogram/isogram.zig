const toUpper = @import("std").ascii.toUpper;

pub fn isIsogram(s: []const u8) bool {
    var flags: u32 = 0;

    for (s) |c| {
        const upper = toUpper(c);
        if ('A' <= upper and upper <= 'Z') {
            const bit = @as(u32, 1) << @intCast(u5, upper - 'A');
            if (bit & flags != 0) {
                return false;
            }
            flags |= bit;
        }
    }
    return true;
}
