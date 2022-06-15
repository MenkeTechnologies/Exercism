=begin
Write your code for the 'Triangle' exercise in this file. Make the tests in
`triangle_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/triangle` directory.
=end

class Triangle
  def initialize (ary)
    ary.sort!
    @valid = ary[0].positive? && ary[0] + ary[1] >= ary[2]
    @set = ary.to_set
  end

  def equilateral?
    @valid && @set.size == 1
  end

  def isosceles?
    # code here
    @valid && @set.size <= 2
  end

  def scalene?
    # code here
    @valid && @set.size == 3
  end
end
