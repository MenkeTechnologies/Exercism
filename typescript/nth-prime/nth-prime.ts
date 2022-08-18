export const nth = (n: number) => {
    if (n < 1) throw new Error("Prime is not possible")
    const primes = [2]
    for (let i = 3; primes.length < n; i += 2)
        if (primes.every(prime => i % prime !== 0)) primes.push(i)
    return primes[primes.length - 1]
};
