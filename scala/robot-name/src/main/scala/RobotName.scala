import scala.util.Random.nextInt

class Robot {
  var name = gen()
  def reset() = name = gen()
  def gen() = (Stream.continually(('A' to 'Z')(nextInt(26))).take(2) ++ Stream.continually(nextInt(10)).take(3)).mkString
}
