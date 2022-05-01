module Prime
  extend self
  
  def nth(n)
    raise ArgumentError.new "n must be positive" if n < 1
    primes = [2]
    curr = 2
    while primes.size < n
      curr += 1
      primes << curr if prime?(curr)
    end
    primes[-1]
  end

  def prime?(n)
    (2..Math.sqrt(n)).none? { |i| n % i == 0 }
  end
end
