export const square = (n: number) => {
    if (n < 1 || n > 64) throw new Error();

    return BigInt(2 ** (n - 1));

}

export const total = () =>
    [...Array(64).keys()].map(n => square(n + 1))
        .reduce((acc, n) => acc + n, 0n)
