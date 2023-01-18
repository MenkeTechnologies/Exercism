class Primes
  def self.sieve(n : Int32) : Array(Int32)
    primes = [] of Int32
    return primes if n < 2
    ary = (2..n).to_a
    until ary.empty?
      primes << ary[0]
      ary.reject! { |x| x.divisible_by? primes.last }
    end
    primes
  end
end

