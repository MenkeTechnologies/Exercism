class Sieve
  def initialize(max)
    @max = max
  end

  def primes
    nums = [nil, nil, *2..@max]
    (2..Math.sqrt(@max)).each do
      if nums[_1]
        (_1 ** 2..@max).step(_1) { |m| nums[m] = nil }
      end
    end
    nums.compact
  end
end
