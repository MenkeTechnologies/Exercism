# frozen_string_literal: true
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
