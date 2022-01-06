object NumberType extends Enumeration {
  type NumberType = Value
  val Perfect, Abundant, Deficient = Value
}

object PerfectNumbers {
  val ERR = "Classification is only possible for natural numbers."

  def classify(i: Int): Either[String, NumberType.Value] = {

    if (i < 1) Left(ERR) else
      Right((1 until i).filter(i % _ == 0).sum match {
        case a if a < i => NumberType.Deficient
        case a if a > i => NumberType.Abundant
        case _ => NumberType.Perfect
      })
  }
}
