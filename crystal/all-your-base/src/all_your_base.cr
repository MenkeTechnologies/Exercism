class AllYourBase
  def self.rebase(input_base : Int32, digits : Array(Int32), output_base : Int32) : Array(Int32)
	raise ArgumentError.new if input_base < 2 || output_base < 2 || digits.any? { |d| d.negative? || d >= input_base }

    sum = digits.reduce(0) { |acc, n| acc * input_base + n }
    return [0] if sum.zero?

    output = [] of Int32
    while sum.positive?
      sum, digit = sum.divmod output_base
      output.unshift digit
    end
    output

  end
end
