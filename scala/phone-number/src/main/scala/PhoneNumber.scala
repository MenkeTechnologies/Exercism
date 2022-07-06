object PhoneNumber {

  val regex = """^\s*(\+?1?\s*)?\(?([2-9]\d{2})\)?[-.\s]*([2-9]\d{2})[-.\s]*(\d{4})\s*$""".r

  def clean(str: String) =
    regex.findFirstMatchIn(str) match {
      case Some(m) => Some(s"${m.group(2)}${m.group(3)}${m.group(4)}")
      case _ => None
    }

}
