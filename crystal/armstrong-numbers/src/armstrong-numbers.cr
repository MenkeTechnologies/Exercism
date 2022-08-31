module ArmstrongNumbers

  def self.armstrong_number?(num : Int)
    num == num.digits.map { |d| d ** num.digits.size }.sum
  end
end
