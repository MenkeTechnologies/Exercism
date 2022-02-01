class MatchingBrackets {
  static const MAP = {'[': ']', '(': ')', '{': '}'};

  bool isPaired(String s) {
    var stack = [];

    return s.split("").every((e) {
          if (MAP.containsKey(e)) {
            stack.add(e);
          } else if (MAP.containsValue(e)) {
            if (stack.isEmpty || MAP[stack.removeLast()] != e) return false;
          }
          return true;
        }) &&
        stack.isEmpty;
  }
}
