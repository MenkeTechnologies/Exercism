
object PhoneNumber {
  def clean(str: String): Option[String] = {

    val regex = """^\s*(\+?1?\s*)?\(?([2-9]\d{2})\)?[-.\s]*([2-9]\d{2})[-.\s]*(\d{4})\s*$""".r

    regex.findFirstMatchIn(str) match {
      case Some(m) => Some(s"${m.group(2)}${m.group(3)}${m.group(4)}")
      case _ => None
    }

  }

}
