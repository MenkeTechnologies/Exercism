class Series
  attr_reader :digits
  def initialize(digits_s)
    raise ArgumentError.new("Only digits can be used") if digits_s =~ /\D/
    @digits = digits_s.chars.map(&:to_i)
  end
  def largest_product(n)
    raise ArgumentError.new("Series size must be 0 <= n <= #{@digits.size}") unless (0..@digits.size) === n
    return 1 if n.zero?
    digits.each_cons(n).map { _1.reduce(:*) }.max
  end
end
