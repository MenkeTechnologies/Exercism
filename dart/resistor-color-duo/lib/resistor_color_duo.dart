class ResistorColorDuo {
  static const MAP = {
    'black': 0,
    'brown': 1,
    'red': 2,
    'orange': 3,
    'yellow': 4,
    'green': 5,
    'blue': 6,
    'violet': 7,
    'grey': 8,
    'white': 9
  };

  int value(List<String> list) => int.parse(list.take(2).map((e) => MAP[e] ?? -1).join(''));
}
