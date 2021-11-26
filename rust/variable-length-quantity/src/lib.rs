#[derive(Debug, PartialEq)]
pub enum Error {
    IncompleteNumber,
    Overflow,
}

const R_BITS: u32 = 0b0111_1111;
const MORE_THAN_4_BITS: u32 = 0b0111_0000;
const L_BIT: u32 = 0b1000_0000;
const SHIFT_AMT: u32 = 7;
const POW: u32 = 128;

/// Convert a list of numbers to a stream of bytes encoded with variable length encoding.
pub fn to_bytes(values: &[u32]) -> Vec<u8> {
    values.to_vec().into_iter().fold(Vec::new(), |mut v, mut n| {
        let mut v2 = vec![];
        if n == 0 {
            v.push(0);
        } else {
            while n > 0 {
                let mut r = n & R_BITS;
                n >>= SHIFT_AMT;
                if !v2.is_empty() {
                    r += POW;
                }
                v2.push(r as u8);
            }

            v2.reverse();

            v.extend(v2.into_iter());
        }

        v
    })
}

/// Given a stream of bytes, extract all numbers which are encoded in there.
pub fn from_bytes(bytes: &[u8]) -> Result<Vec<u32>, Error> {
    let mut end = vec![];
    let mut tmp = vec![];

    for &b in bytes {
        if b as u32 & L_BIT == L_BIT {
            tmp.push(b as u32);
        } else {
            tmp.push(b as u32);
            if tmp.len() == 5 {
                if tmp[0] & MORE_THAN_4_BITS > 0 {
                    return Err(Error::Overflow);
                }
            } else if tmp.len() > 5 {
                return Err(Error::Overflow);
            }
            end.push(tmp.clone());
            tmp.clear();
        }
    }

    if tmp.len() > 0 {
        return Err(Error::IncompleteNumber);
    }

    Ok(
        end.into_iter().map(|v| {
            v.into_iter().rev().enumerate().fold(0, |mut s, (idx, n)| {
                let aadd = (n & R_BITS) * POW.pow(idx as u32);
                s += aadd;
                s
            })
        }).collect()
    )
}
