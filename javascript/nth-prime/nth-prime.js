export const prime = num => {
  if (num < 1) throw new Error("there is no zeroth prime")
  const primes = [2]
  for (let i = 3; primes.length < num; i += 2)
    if (primes.every(n => i % n !== 0)) primes.push(i)
  return primes[primes.length - 1]
};
