class WordCount {
  Map<String, int> countWords(String s) {

    var dict = new Map<String, int>();

    s.toLowerCase().replaceAll(RegExp("(?!\\w|'t\\b)."), ' ').trim()
        .split(RegExp("\\s+")).forEach((e) { dict[e] = ( dict[e] ?? 0 )+ 1; });

    return dict;

  }
}
