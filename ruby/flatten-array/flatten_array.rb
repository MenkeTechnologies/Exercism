=begin
Write your code for the 'Flatten Array' exercise in this file. Make the tests in
`flatten_array_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/flatten-array` directory.
=end

class FlattenArray

  def self.flatten(ary)
    ary.map { _1.is_a?(Enumerable) ? flatten(_1) : [_1] }
       .reduce([]) { _1 + _2 }.reject { _1.nil? }

  end
end
