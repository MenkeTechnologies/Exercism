const std = @import("std");

pub fn response(s: []const u8) []const u8 {
    const nows = std.mem.trim(u8, s, &std.ascii.whitespace);

    if (nows.len == 0) return "Fine. Be that way!";

    const has_upper = for (nows) |c| {
        if (std.ascii.isUpper(c)) break true;
    } else false;

    const is_yelling = for (nows) |c| {
        if (std.ascii.isAlphabetic(c) and std.ascii.isLower(c)) break false;
    } else has_upper;

    const is_question = nows[nows.len - 1] == '?';

    if (!is_yelling and is_question) return "Sure.";
    if (is_yelling and !is_question) return "Whoa, chill out!";
    if (is_yelling and is_question) return "Calm down, I know what I'm doing!";
    return "Whatever.";
}
