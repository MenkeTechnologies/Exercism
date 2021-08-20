object Bob {
  def response(statement: String): String = {

    val noSpace = statement.replaceAll(raw"\s+", "")

    if (noSpace.isEmpty) {
      return "Fine. Be that way!"
    }

    if (noSpace.matches(raw".*[A-Z].*") && !noSpace.matches(raw".*[a-z].*")) {

      if (noSpace.matches(raw".*\?$$")) {
        return "Calm down, I know what I'm doing!"
      }

      return "Whoa, chill out!"
    }

    if (noSpace.matches(raw".*\?$$")) {
      return "Sure."
    }


    "Whatever."
  }
}
