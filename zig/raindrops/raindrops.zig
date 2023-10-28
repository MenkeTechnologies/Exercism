const fmt = @import("std").fmt;

pub fn convert(buf: []u8, n: u32) []const u8 {
    const s = fmt.bufPrint(buf, "{s}{s}{s}", .{
        if (n % 3 == 0) "Pling" else "",
        if (n % 5 == 0) "Plang" else "",
        if (n % 7 == 0) "Plong" else "",
    }) catch unreachable;
    return if (s.len > 0) s else fmt.bufPrint(buf, "{d}", .{n}) catch unreachable;
}
