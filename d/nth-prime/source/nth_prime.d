module nth_prime;
import std.conv: to;
import std.math: sqrt;

bool isPrime(int n, int[] primes) {
    for (size_t i = 0; i < primes.length; ++i)
        if (n % primes[i] == 0) return false;

    return true;
}
int prime(int limit) {
    if (limit < 1) throw new Exception("There is no zeroth prime");
    int n = 3;
    int[] primes = [2];
    while (primes.length < limit) {
        if (isPrime(n, primes)) primes ~= n;
        n += 2;
    }
    return primes[limit - 1];
}
unittest
{
    import std.exception : assertThrown;
    immutable int allTestsEnabled = 0;
    // First prime
    assert(prime(1) == 2);
    static if (allTestsEnabled)
    {
        // Second prime
        assert(prime(2) == 3);
        // Sixth prime
        assert(prime(6) == 13);
        // Big prime
        assert(prime(10_001) == 10_4743);
        // There is no zeroth prime
        //assertThrown(prime(0));
    }
}

