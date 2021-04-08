pub fn get_diamond(c: char) -> Vec<String> {
    let size = c as u8 - b'A';
    (0..=size)
        .chain((0..size).rev())
        .map(|row_offset| {
            (0..=size)
                .chain((0..size).rev())
                .map(|col_offset| {
                    if row_offset == size - col_offset {
                        (b'A' + row_offset) as char
                    } else {
                        ' '
                    }
                })
                .collect::<String>()
        })
        .collect::<Vec<String>>()
}
