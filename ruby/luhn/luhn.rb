=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end
class Luhn
  def self.valid?(str)

    str.gsub! /\s/, ''

    return false if str.size < 2 || str.chars.any? { _1.match? /\D/ }

    (str.chars.reverse.map { _1.to_i }.each.with_index.map {
      dbl = if _2.odd?
              _1 * 2
            else
              _1
            end
      if dbl > 9
        dbl - 9
      else
        dbl
      end
    }.sum % 10).zero?

  end
end
