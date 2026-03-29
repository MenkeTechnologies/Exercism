=begin
Write your code for the 'Pascals Triangle' exercise in this file. Make the tests in
`pascals_triangle_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pascals-triangle` directory.
=end

class Triangle

  def initialize(n)
    @n = n
  end

  def rows
    (2..@n).reduce([[1]]) do |acc, _|
      acc << ([1] + acc.last[0..-2].each_with_index.map { _1 + acc.last[_2 + 1] } + [1])
    end
  end

end
