object ArmstrongNumbers {
  def isArmstrongNumber(num: Int): Boolean = {

    num.toString.map{ i => math.pow(i.toInt - 48, num.toString.length) }.sum == num

  }

}
