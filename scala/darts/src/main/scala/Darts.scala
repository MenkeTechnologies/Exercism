import scala.math.pow

object Darts {
  def score(x: Double, y: Double) = pow(pow(x, 2) + pow(y, 2), 0.5) match {
    case d if d <= 1 => 10
    case d if d <= 5 => 5
    case d if d <= 10 => 1
    case _ => 0
  }
}
