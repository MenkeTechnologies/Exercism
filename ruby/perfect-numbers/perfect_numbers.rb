class PerfectNumber

  def self.classify(num)

    raise RuntimeError if num < 1
    sum = (1..(num / 2)).filter { (num % _1).zero? }.sum
    sum > num ? 'abundant' : sum < num ? 'deficient' : 'perfect'

  end
end
