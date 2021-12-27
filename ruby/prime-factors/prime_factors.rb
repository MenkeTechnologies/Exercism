=begin
Write your code for the 'Prime Factors' exercise in this file. Make the tests in
`prime_factors_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/prime-factors` directory.
=end

class PrimeFactors

  def self.of(start)

    fac = []
    divisor = 2

    while start > 1
      while (start % divisor).zero?
        fac << divisor
        start /= divisor
      end

      divisor += 1
    end

    fac

  end

end
