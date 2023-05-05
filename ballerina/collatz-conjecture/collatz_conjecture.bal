function collatzSteps(int n) returns int|error {
    if n < 1 { return error("Only positive integers are allowed"); }
    int dup = n;
    int cnt = 0;
    while dup > 1 {
        if dup % 2 == 0 {
            dup /= 2;
        } else {
            dup = 3 * dup + 1;
        }
        cnt += 1;
    }
    return cnt;
}

