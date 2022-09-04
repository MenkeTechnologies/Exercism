pub fn collatz(n: u64) -> Option<u64> {
    let mut cnt = 0;
    let mut cpy = n;
    loop {
        if cpy < 1 {
            return None;
        }
        if cpy == 1 {
            return Some(cnt);
        }

        if cpy % 2 == 00 {
            cpy /= 2;
        } else {
            cpy = 3 * cpy + 1;
        }

        cnt += 1;
    }
}
