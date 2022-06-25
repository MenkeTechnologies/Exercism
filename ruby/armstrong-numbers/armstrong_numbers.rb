class ArmstrongNumbers

  def self.include?(num)
    num == num.digits.map { _1 ** num.digits.size }.sum
  end

end
