pub fn get_diamond(c: char) -> Vec<String> {
    let top_idx = c as u8 - b'A';

    (0..=top_idx)
        .chain((0..top_idx).rev())
        .map(|row_offset| {
            (0..=top_idx)
                .rev()
                .chain(1..=top_idx)
                .map(|col_offset| {
                    if row_offset == col_offset {
                        (b'A' + row_offset) as char
                    } else {
                        ' '
                    }
                })
                .collect::<String>()
        })
        .collect::<Vec<String>>()
}
