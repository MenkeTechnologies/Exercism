pub fn eggCount(number: u64) -> u64 {
    let mut cnt = 0;
    let mut dup = number;

    while dup > 0
    {
        if dup % 2 == 1 {
            cnt += 1;
        }
        dup /= 2;
    };
    cnt
}

