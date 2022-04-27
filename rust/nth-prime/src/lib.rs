pub fn nth(n: u32) -> u32 {
    if n == 0 {
        return 2;
    }

    let mut possible = 2;
    let mut cnt = 0;
    loop {
        let mut prime = true;
        possible += 1;
        for i in 2..possible {
            if possible % i == 0 {
                prime = false;
            }
        }

        if prime {
            cnt+=1;
            if cnt == n {
                return possible;
            }
        }

        if cnt > n {
            return 0;
        }
    };

}
