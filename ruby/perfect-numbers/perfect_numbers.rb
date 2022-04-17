=begin
Write your code for the 'Perfect Numbers' exercise in this file. Make the tests in
`perfect_numbers_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/perfect-numbers` directory.
=end

class PerfectNumber

  def self.classify(num)

    raise RuntimeError if num < 1
    sum = (1...num).filter { (num % _1).zero? }.sum
    sum > num ? 'abundant' : sum < num ? 'deficient' : 'perfect'

  end
end
