module PerfectNumbers
  def self.classify(num)
      raise ArgumentError.new "n cannot be negative" if num < 1
      sum = (1..num -1).select { |n| num % n == 0 }.sum
      sum == num ? "perfect" : sum > num ? "abundant" : "deficient"
  end
end
