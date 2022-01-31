class Raindrops {
  static const MAP = {3: "Pling", 5: "Plang", 7: "Plong"};

  String convert(int i) => MAP.keys
      .where((e) => i % e == 0)
      .map((e) => MAP[e])
      .join("")
      .replaceAll(RegExp('^\$'), "$i");
}
