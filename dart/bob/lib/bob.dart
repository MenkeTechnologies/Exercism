class Bob {
  String response(String s) {
    s = s.replaceAll(RegExp(r'\s'), '');

    if (s.isEmpty) {
      return 'Fine. Be that way!';
    }

    if (RegExp('[A-Z]').hasMatch(s) && !RegExp('[a-z]').hasMatch(s)) {
      return s.endsWith("?")
          ? 'Calm down, I know what I\'m doing!'
          : 'Whoa, chill out!';
    }

    return s.endsWith("?") ? 'Sure.' : 'Whatever.';
  }
}
