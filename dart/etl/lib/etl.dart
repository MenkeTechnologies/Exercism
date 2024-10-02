class Etl {
  Map<String, int> transform(Map<String, List<String>> legacy) {
    var res = {};
    for (var value in legacy.keys) {
      for (var c in legacy[value]!) {
        res[c.toLowerCase()] = int.parse(value);
      }
    }
    return res;
  }
}
