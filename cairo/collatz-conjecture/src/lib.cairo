pub fn steps(number: usize) -> usize {
    assert!(number > 0, "Only positive integers are allowed");
    let mut dup = number;
    let mut cnt = 0;
    while dup > 1 {
        if dup % 2 == 0 {
            dup /= 2;
        } else {
            dup = 3 * dup + 1;
        }
        cnt += 1;
    };
    cnt
}
