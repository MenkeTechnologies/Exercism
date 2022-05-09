class Isogram {
  bool isIsogram(String s) {
    String chars = s.toLowerCase().replaceAll(new RegExp(r"\W"), "");
    return chars.split("").toSet().length == chars.length;
  }
  }
