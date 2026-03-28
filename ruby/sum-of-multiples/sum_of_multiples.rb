=begin
Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
`sum_of_multiples_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sum-of-multiples` directory.
=end

class SumOfMultiples

  def initialize(*factors)
    @factors = factors
  end

  def to(limit)
    (1...limit).filter { |n| @factors.any? { _1 != 0 && (n % _1).zero? } }.sum
  end

end
