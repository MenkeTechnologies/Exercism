const math = @import("std").math;
pub fn isArmstrongNumber(candidate: u128) bool {
    var digitCount: u128 = 0;
    var dup = candidate;
    while (dup > 0) {
        digitCount += 1;
        dup /= 10;
    }
    var sum: u128 = 0;
    dup = candidate;
    while (dup > 0) {
        sum += math.pow(u128, dup % 10, digitCount);
        dup /= 10;
    }
    return sum == candidate;
}
