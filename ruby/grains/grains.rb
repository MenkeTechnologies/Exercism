=begin
Write your code for the 'Grains' exercise in this file. Make the tests in
`grains_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grains` directory.
=end
class Grains

  def self.square(i)

    throw ArgumentError if i < 1 || i > 64
    2 ** (i - 1)
  end

  def self.total
    (1..64).map { square _1 }.sum

  end
end
