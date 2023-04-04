const ascii = @import("std").ascii;

pub fn isValidIsbn10(s: []const u8) bool {
    var total: usize = 0;
    var i: usize = 0;
    for (s) |c| {
        if (c == '-') {
            continue;
        }
        if (!ascii.isDigit(c)) {
            if (i == 9 and c == 'X') {
                total += 10;
            } else {
                return false;
            }
        } else {
            total += (c - '0') * (10 - i);
        }
        i += 1;
    }
    return total % 11 == 0 and i == 10;
}
