use std::collections::HashMap;

pub fn primes_up_to(upper_bound: u64) -> Vec<u64> {
    let mut primes = [].to_vec();
    let mut is_num_prime: HashMap<u64, bool> = HashMap::new();

    for i in 2..=upper_bound {
        is_num_prime.insert(i, true);
    }

    for i in 2..upper_bound {
        let mut cnt = i;
        loop {
            let idx = i * cnt;

            if !is_num_prime.contains_key(&idx) {
                break;
            }

            if !is_num_prime.get(&idx).unwrap() {
                cnt += 1;
                continue;
            }

            is_num_prime.insert(idx, false);

            cnt += 1;
        }
    }

    for (k, v) in is_num_prime {
        if v {
            primes.push(k);
        }
    }

    primes.sort();

    primes
}
