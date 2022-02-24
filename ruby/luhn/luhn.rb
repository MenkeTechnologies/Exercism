=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end
class Luhn
  def self.valid?(str)

    str.gsub! /\s/, ''
    str.size < 2 || str.chars.any? { _1.match? /\D/ } ? false :
      str.chars.reverse.map { _1.to_i }.each.with_index.map {
        dbl = _2.odd? ? _1 * 2 : _1
        dbl - (dbl > 9 ? 9 : 0)
      }.sum % 10 == 0

  end
end
