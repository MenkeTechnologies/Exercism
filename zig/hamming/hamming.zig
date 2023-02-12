const std = @import("std");

pub const DnaError = error{
    EmptyDnaStrands,
    UnequalDnaStrands,
};
pub fn compute(first: []const u8, second: []const u8) DnaError!usize {
    if (first.len == 0 or second.len == 0)
        return DnaError.EmptyDnaStrands;
    if (first.len != second.len)
        return DnaError.UnequalDnaStrands;
    var dist: usize = 0;
    for (first) |a, i| {
        const b = second[i];
        if (a != b) dist += 1;
    }
    return dist;
}
