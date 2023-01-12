#[derive(Debug, PartialEq)]
pub enum Error {
    SpanTooLong,
    InvalidDigit(char),
}

pub fn lsp(s: &str, span: usize) -> Result<u64, Error> {
    if span == 0 {
        return Ok(1);
    }
    let digits = s
        .chars()
        .map(|c| c.to_digit(10).ok_or(Error::InvalidDigit(c)))
        .collect::<Result<Vec<u32>, Error>>()?;
    digits
        .windows(span)
        .map(|win| win.iter().map(|&n| n as u64).product())
        .max()
        .ok_or(Error::SpanTooLong)
}
