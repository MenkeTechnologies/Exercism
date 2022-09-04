use rand::{self, Rng};

pub fn private_key(p: u64) -> u64 {
    let mut rng = rand::thread_rng();

    rng.gen_range(2..p)
}

pub fn public_key(p: u64, g: u64, a: u64) -> u64 {
    let mut r: u64 = 1;
    for _ in 1..=a {
        r = (r * g) % p
    }
    r
}

pub fn secret(p: u64, b_pub: u64, a: u64) -> u64 {
    let mut r: u64 = 1;
    for _ in 1..=a {
        r = (r * b_pub) % p;
    }
    r
}
