fn recurse(array: &[i32], key: i32, l: i32, r: i32) -> Option<usize> {

    if r < l  {
        return None;
    }

    let mid_idx = (l + r) / 2;

    return if key == array[mid_idx as usize] {
        Some(mid_idx as usize)
    } else if key < array[mid_idx as usize] {
        recurse(&array, key, l, mid_idx - 1)
    } else {
        recurse(&array, key, mid_idx + 1, r)
    }
}

pub fn find(array: &[i32], key: i32) -> Option<usize> {
    recurse(array, key, 0, array.len() as i32 - 1)
}
