#[derive(Debug, PartialEq)]
pub enum Comparison {
    Equal,
    Sublist,
    Superlist,
    Unequal,
}

pub fn sublist<T: PartialEq>(first_list: &[T], second_list: &[T]) -> Comparison {
    match (
        is_sub(first_list, second_list),
        is_sub(second_list, first_list),
    ) {
        (true, true) => Comparison::Equal,
        (true, false) => Comparison::Sublist,
        (false, true) => Comparison::Superlist,
        (false, false) => Comparison::Unequal,
    }
}
fn is_sub<T: PartialEq>(sub: &[T], sup: &[T]) -> bool {
    if sup.len() < sub.len() {
        return false;
    }

    for offset in 0..=sup.len() - sub.len() {
        if sub.iter().zip(sup[offset..].iter()).all(|(a, b)| a == b) {
            return true;
        }
    }

    false
}
