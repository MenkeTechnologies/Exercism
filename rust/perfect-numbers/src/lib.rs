use crate::Classification::*;

#[derive(Debug, PartialEq, Eq)]
pub enum Classification {
    Abundant,
    Perfect,
    Deficient,
}

pub fn classify(num: u64) -> Option<Classification> {
    if num == 0 {
        None
    } else {
        let sum = (1..num).filter(|&f| num % f == 0).sum::<u64>();
        Some(if sum < num { Deficient } else if sum > num { Abundant } else { Perfect })
    }
}
