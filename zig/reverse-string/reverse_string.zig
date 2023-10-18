pub fn reverse(buf: []u8, s: []const u8) []u8 {
    for (s, 1..) |c, i| {
        buf[buf.len - i] = c;
    }
    return buf;
}
