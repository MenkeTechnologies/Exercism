use std::ops::AddAssign;

use num_traits::{zero, Zero};

pub struct Triangle<T> {
    s: Vec<T>,
}

impl<T> Triangle<T>
    where
        T: PartialOrd + Zero + Copy + AddAssign,
{
    pub fn build(sides: [T; 3]) -> Option<Triangle<T>> {
        let mut v: Vec<T> = [].to_vec();

        for (i, side) in sides.iter().enumerate() {
            if *side == zero() {
                return None;
            }
            let mut sum: T = Zero::zero();
            for (j, side) in sides.iter().enumerate() {
                if i != j {
                    sum += *side;
                }
            }
            if sum < *side {
                return None;
            }

            v.push(*side);
        }

        let tri = Triangle { s: v };

        Some(tri)
    }

    pub fn is_equilateral(&self) -> bool {
        let f = self.s.get(0).unwrap();
        for side in self.s.iter() {
            if *side != *f {
                return false;
            }
        }

        true
    }

    pub fn is_scalene(&self) -> bool {
        for (i, side1) in self.s.iter().enumerate() {
            for (j, side2) in self.s.iter().enumerate() {
                if i != j && *side1 == *side2 {
                    return false;
                }
            }
        }

        true
    }

    pub fn is_isosceles(&self) -> bool {
        for (i, side1) in self.s.iter().enumerate() {
            let mut cnt = 0;
            for (j, side2) in self.s.iter().enumerate() {
                if i != j && *side1 == *side2 {
                    cnt += 1;
                }
            }
            if cnt == 1 {
                return true;
            }
        }

        false
    }
}
