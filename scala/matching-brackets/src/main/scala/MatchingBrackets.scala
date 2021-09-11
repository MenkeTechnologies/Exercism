import scala.collection.mutable.Stack

object MatchingBrackets {

  val brackets = Map(('[', ']'), ('{', '}'), ('(', ')'))
  def isPaired(str: String): Boolean = {

    val stk = Stack[Char]()

    for (ch <- str.toList) {

      if (brackets.keys.toList.contains(ch)) {
        stk.push(ch)
      } else if (brackets.values.toList.contains(ch)) {
        if (stk.isEmpty || ch != brackets(stk.pop())) {
          return false
        }
      }
    }
    stk.isEmpty
  }

}
