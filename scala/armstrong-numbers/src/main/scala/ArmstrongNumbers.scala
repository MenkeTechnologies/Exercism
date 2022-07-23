object ArmstrongNumbers {
  def isArmstrongNumber(num: Int) = num.toString.map{ _.asDigit }
    .map{ math.pow(_, num.toString.length) }.sum == num
}
