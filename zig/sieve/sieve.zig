const std = @import("std");

pub fn primes(buffer: []u32, comptime limit: u32) []u32 {
    var sieve = std.StaticBitSet(limit + 1).initEmpty();
    sieve.set(0);
    sieve.set(1);
    var idx: u32 = 0;
    var n: u32 = 2;
    while (n <= limit) : (n += 1) {
        if (sieve.isSet(n)) continue;
        buffer[idx] = n;
        idx += 1;
        var j = n * n;
        while (j <= limit) : (j += n) {
            sieve.set(j);
        }
    }
    return buffer[0..idx];
}
