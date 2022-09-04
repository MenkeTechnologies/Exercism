use std::convert::TryInto;

pub fn spiral_matrix(size: u32) -> Vec<Vec<u32>> {
    let row_col_cnt: usize = size.try_into().unwrap();
    let mut v = vec![vec![size * size; row_col_cnt]; row_col_cnt];
    let mut n_iter = 1..;

    for offset in 0..row_col_cnt / 2 {
        let width = row_col_cnt - 2 * offset;

        (1..width).for_each(|i| v[offset][offset + i - 1] = n_iter.next().unwrap());

        (1..width).for_each(|i| v[offset + i - 1][offset + width - 1] = n_iter.next().unwrap());

        (1..width)
            .rev()
            .for_each(|i| v[offset + width - 1][offset + i] = n_iter.next().unwrap());

        (1..width)
            .rev()
            .for_each(|i| v[offset + i][offset] = n_iter.next().unwrap());
    }
    v
}
