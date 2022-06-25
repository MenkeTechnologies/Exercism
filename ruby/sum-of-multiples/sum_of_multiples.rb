class SumOfMultiples

  def initialize(*factors)
    @factors = factors
  end

  def to(limit)
    (1...limit).filter { |n| @factors.any? { _1 != 0 && (n % _1).zero? } }.sum
  end

end
