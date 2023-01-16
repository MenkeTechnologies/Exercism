module BaseConverter
  def self.convert(input_base, digits, output_base)
    raise ArgumentError, "Input base must be >= 2" unless input_base >= 2
    raise ArgumentError, "Output base must be >= 2" unless output_base >= 2
    raise ArgumentError, "Digits must be >= 0" unless digits.all? { _1 >= 0 }
    raise ArgumentError, "Digits must be < #{input_base}" unless digits.all? { _1 < input_base }
    sum = digits.reduce(0) {_1 * input_base + _2}
    return [0] if sum.zero?
    output = []
    while sum > 0
      sum, digit = sum.divmod output_base
      output.unshift digit
    end
    output
  end
end
