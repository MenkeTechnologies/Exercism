import scala.util.Random.nextInt

class Robot {

  private var _name = gen()

  def reset() = {
    _name = gen()
  }

  def gen() = {

    val alpha = 'A' to 'Z'
    (Stream.continually(alpha(nextInt(26))).take(2) ++ Stream.continually(nextInt(10)).take(3)).mkString
  }

  def name = _name

}
