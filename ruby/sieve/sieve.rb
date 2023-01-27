class Sieve
  def initialize(max)
    @max = max
  end

  def primes
    return [] if @max < 2
    nums = [*2..@max]
    (2..Math.sqrt(@max)).each do
        (2 * _1 - 2..@max - 2).step(_1) { |m| nums[m] = nil }
    end
    nums.compact
  end
end
