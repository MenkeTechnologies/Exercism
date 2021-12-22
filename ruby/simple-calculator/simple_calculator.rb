class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)

    raise ArgumentError unless first_operand.is_a?(Integer) && second_operand.is_a?(Integer)

    raise UnsupportedOperation unless ALLOWED_OPERATIONS.include? operation

    return 'Division by zero is not allowed.' if second_operand.zero? && operation == '/'

    answer = first_operand.send(operation, second_operand)

    "#{first_operand} #{operation} #{second_operand} = #{answer}"

  end
end
