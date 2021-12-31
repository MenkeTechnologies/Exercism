# frozen_string_literal: true
# Write your code for the 'Matrix' exercise in this file. Make the tests in
# `matrix_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/matrix` directory.
class Matrix

  def initialize(str)
    @rows = str.split("\n").map { _1.split(' ').map(&:to_i) }
    @columns = str.split("\n").reduce([]) { |acc, n|
      n.split(' ').each_with_index {
        (acc[_2] ||= []) << _1.to_i
      }
      acc
    }

  end

  attr_reader :rows, :columns

end
