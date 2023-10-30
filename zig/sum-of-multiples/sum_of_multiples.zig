pub fn sum(_: anytype, factors: []const u32, limit: u32) !u64 {
    var result: u64 = 0;
    var n: u64 = 1;
    while (n < limit) {
        for (factors) |f| {
            if (f != 0 and n % f == 0) {
                result += n;
                break;
            }
        }
        n += 1;
    }
    return result;
}
