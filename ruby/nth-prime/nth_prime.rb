module Prime
  extend self

  def nth(n)
    raise ArgumentError.new "n must be positive" if n < 1
    primes = [2]
    curr = 3
    while primes.size < n
      primes << curr if prime?(curr)
      curr += 2
    end
    primes[-1]
  end

  def prime?(n)
    (2..Math.sqrt(n)).none? { n % _1 == 0 }
  end
end
