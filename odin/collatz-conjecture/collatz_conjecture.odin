package collatz_conjecture

steps :: proc(start: int) -> (cnt: int, ok: bool) {
    if start < 1 {
    	return 0, false
    }
    cnt = 0
    n : int = start
    for ; n > 1; {
        if (n % 2 == 0) {
            n /= 2
        } else {
            n = 3 * n + 1
        }
        cnt += 1

    }
    return cnt, true
}