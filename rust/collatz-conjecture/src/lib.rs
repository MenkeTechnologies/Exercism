pub fn collatz(n: u64) -> Option<u64> {
    if n < 1 {
        return None;
    }
    let mut cnt = 0;
    let mut dup = n;
    while dup != 1 {
        if dup % 2 == 0 {
            dup /= 2;
        } else {
            if let Some(safe) = dup.checked_mul(3) {
                if let Some(still_safe) = safe.checked_add(1) {
                    dup = still_safe;
                } else {
                    return None;
                }
            } else {
                return None;
            }
        }

        cnt += 1;
    }

    Some(cnt)
}
