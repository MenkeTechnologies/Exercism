/// Yields each item of a and then each item of b
pub fn append<T, I>(a: I, b: I) -> impl Iterator<Item=T>
where
    I: Iterator<Item=T>,
{
    let mut result = Vec::new();
    for item in a {
        result.push(item)
    }
    for item in b {
        result.push(item)
    }
    result.into_iter()
}
/// Combines all items in all nested iterators inside into one flattened iterator
pub fn concat<I, NI, T>(nested_iter: I) -> impl Iterator<Item=T>
where
    NI: Iterator<Item=T>,
    I: Iterator<Item=NI>,
{
    let mut result = Vec::new();
    for iter in nested_iter {
        for item in iter {
            result.push(item)
        }
    }
    result.into_iter()
}
/// Returns an iterator of all items in iter for which `predicate(item)` is true
pub fn filter<I, T, F>(iter: I, f: F) -> impl Iterator<Item=T>
where
    I: Iterator<Item=T>,
    F: Fn(&T) -> bool,
{
    foldl(iter, vec![].into_iter(), |acc, n|
        append(acc, if f(&n) {vec![n]} else {vec![]}.into_iter()).collect::<Vec<T>>().into_iter()
    )
}
pub fn length<I: Iterator<Item=T>, T>(iter: I) -> usize {
    foldl(iter, 0, |acc, _n| acc + 1)
}
/// Returns an iterator of the results of applying `function(item)` on all iter items
pub fn map<I, F, T, U>(iter: I, f: F) -> impl Iterator<Item=U>
where
    I: Iterator<Item=T>,
    F: Fn(T) -> U,
{
    foldl(iter, vec![].into_iter(), |acc, n|
        append(acc, vec![f(n)].into_iter()).collect::<Vec<U>>().into_iter()
    )
}
pub fn foldl<I, F, T, U>(iter: I, initial: U, f: F) -> U
where
    I: Iterator<Item=T>,
    F: Fn(U, T) -> U,
{
    let mut result = initial;
    for item in iter {
        result = f(result, item)
    }
    result
}
pub fn foldr<I, F, T, U>(iter: I, initial: U, f: F) -> U
where
    I: DoubleEndedIterator<Item=T>,
    F: Fn(U, T) -> U,
{
    foldl(reverse(iter), initial, f)
}
/// Returns an iterator with all the original items, but in reverse order
pub fn reverse<I: DoubleEndedIterator<Item=T>, T>(iter: I) -> impl Iterator<Item=T> {
    foldl(iter, vec![].into_iter(), |acc, n|
        append(vec![n].into_iter(), acc).collect::<Vec<T>>().into_iter()
    )
}
