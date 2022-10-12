export const classify = (n: number) => {
    if (n < 1) throw new Error("Classification is only possible for natural numbers.\"");
    const factors = [...Array(Math.round(n / 2) + 1).keys()].filter(k => n % k === 0);
    const sum = factors.reduce((acc, n) => acc + n, 0);
    return sum < n || factors.length === 1 && factors[0] === n ? "deficient" : sum > n ? "abundant" : "perfect";
};
