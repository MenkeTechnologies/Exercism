=begin
Write your code for the 'Darts' exercise in this file. Make the tests in
`darts_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/darts` directory.
=end

class Darts
  def initialize x, y
    @x = x
    @y = y
    @dist = ((@x - 0)**2 + (@y - 0)**2)**0.5
  end

  def score
    if @dist > 10
      0
    elsif @dist > 5
      1
    elsif @dist > 1
      5
    else
      10
    end
  end
end
