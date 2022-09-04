/// What should the type of _function be?
pub fn map<F, T, U>(input: Vec<T>, mut _function: F) -> Vec<U>
where
    F: FnMut(T) -> U,
{
    input.into_iter().fold(Vec::new(), |mut acc, n| {
        acc.push(_function(n));
        acc
    })
}
