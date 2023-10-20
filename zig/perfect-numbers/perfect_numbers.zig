const std = @import("std");
pub const Classification = enum {
    deficient,
    perfect,
    abundant,
};
/// Asserts that `n` is nonzero.
pub fn classify(n: u64) Classification {
    std.debug.assert(n > 0);
    var sum: u64 = 0;
    for (1..n) |i| {
        if (@mod(n, i) == 0)
            sum += i;
    }
    return if (sum == n) .perfect else if (sum > n) .abundant else .deficient;
}
