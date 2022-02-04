class Hamming {
  int validate(String l, String r) {
    if (l.length != r.length) {
      throw ArgumentError(l.isEmpty || r.isEmpty
          ? 'no strand must be empty'
          : 'left and right strands must be of equal length');
    }

    return l.length;
  }

  int distance(String l, String r) =>
      Iterable<int>.generate(validate(l, r)).where((i) => l[i] != r[i]).length;
}
