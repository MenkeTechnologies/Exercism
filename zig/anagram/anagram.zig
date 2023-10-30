const std = @import("std");
const mem = std.mem;
const sort = std.sort;
const lc = std.ascii.allocLowerString;
const eq = mem.eql;

pub fn detectAnagrams(
    allocator: mem.Allocator,
    word: []const u8,
    candidates: []const []const u8,
) !std.BufSet {
    var res = std.BufSet.init(allocator);
    var lower = try lc(allocator, word);
    defer allocator.free(lower);
    var sortedWord = try allocator.dupe(u8, lower);
    defer allocator.free(sortedWord);
    sort.pdq(u8, sortedWord, {}, sort.asc(u8));
    for (candidates) |candidate| {
        var lowerCandidate = try lc(allocator, candidate);
        defer allocator.free(lowerCandidate);

        if (eq(u8, lower, lowerCandidate)) {
            continue;
        }
        var sortedCandidate = try allocator.dupe(u8, lowerCandidate);
        defer allocator.free(sortedCandidate);
        sort.pdq(u8, sortedCandidate, {}, sort.asc(u8));
        if (eq(u8, sortedWord, sortedCandidate)) {
            try res.insert(candidate);
        }
    }
    return res;
}
