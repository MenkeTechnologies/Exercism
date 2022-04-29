export function accumulate<T,U> (list: T[], accumulator: (_: T) => U): U[] {
    const init: U[] = []
    return list.reduce((acc, n) => [...acc, accumulator(n)], init);
}
