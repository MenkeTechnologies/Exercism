pub fn series(digits: &str, len: usize) -> Vec<String> {
    let mut v = vec![];

    let mut cnt = 0;

    loop {
        if cnt + len > digits.len() {
            break;
        }

        let end = cnt + len;

        v.push(String::from(&digits[cnt..end]));

        cnt += 1;
    }

    v
}
