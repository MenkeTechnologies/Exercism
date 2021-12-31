import scala.collection.mutable.ListBuffer

object PrimeFactors {
  def factors(i: Long) = {

    val factors = ListBuffer[Int]()
    var dup = i
    var div = 2

    while (dup > 1){
      while (dup % div == 0){
        factors += div
        dup /= div
      }
      div += 1
    }


    factors.toList

  }

}
