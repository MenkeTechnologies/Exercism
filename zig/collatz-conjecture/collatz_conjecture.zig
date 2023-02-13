pub const ComputationError = error{IllegalArgument};
pub fn steps(number: isize) anyerror!usize {
    if (number < 1) return ComputationError.IllegalArgument;
    var cnt: u32 = 0;
    var dup = number;
    while (dup != 1) {
        if (@mod(dup, 2) == 1) dup = dup * 3 + 1 else dup = @divTrunc(dup, 2);
        cnt += 1;
    }
    return cnt;
}
