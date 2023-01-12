use num_bigint::BigInt;
use num_traits::Zero;
use std::cmp::Ordering;
use std::ops::{Add, Mul, Sub};

#[derive(PartialEq, Eq, Ord, Debug, Clone)]
pub struct Decimal {
    mantissa: BigInt,
    exponent: BigInt,
}

impl PartialOrd for Decimal {
    fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
        let (lhs, rhs) = aligned_mantissas(self.clone(), other.clone());
        Some(lhs.cmp(&rhs))
    }
}

impl Add for Decimal {
    type Output = Self;
    fn add(self, other: Self) -> Self {
        let (lhs, rhs) = aligned_mantissas(self.clone(), other.clone());
        Self::new(lhs + rhs, self.exponent.max(other.exponent))
    }
}

impl Sub for Decimal {
    type Output = Self;
    fn sub(self, other: Self) -> Self {
        self + Decimal::new(-other.mantissa, other.exponent)
    }
}

impl Mul for Decimal {
    type Output = Self;
    fn mul(self, other: Self) -> Self {
        Self::new(
            self.mantissa * other.mantissa,
            self.exponent + other.exponent,
        )
    }
}

impl Decimal {
    pub fn new(mut mantissa: BigInt, mut exponent: BigInt) -> Self {
        while exponent > Zero::zero() && &mantissa % 10 == Zero::zero() {
            mantissa /= 10;
            exponent -= 1;
        }
        Self { mantissa, exponent }
    }
    pub fn try_from(input: &str) -> Option<Decimal> {
        let mantissa = input.replace(".", "").parse::<BigInt>().ok()?;
        if let Some(index) = input.find(".") {
            Some(Decimal::new(
                mantissa,
                BigInt::from(input.len() - index - 1),
            ))
        } else {
            Some(Decimal::new(mantissa, Zero::zero()))
        }
    }
}

fn aligned_mantissas(mut lhs: Decimal, mut rhs: Decimal) -> (BigInt, BigInt) {
    while lhs.exponent < rhs.exponent {
        lhs.mantissa *= 10;
        lhs.exponent += 1;
    }
    while rhs.exponent < lhs.exponent {
        rhs.mantissa *= 10;
        rhs.exponent += 1;
    }
    (lhs.mantissa, rhs.mantissa)
}
