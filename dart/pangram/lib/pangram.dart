class Pangram {
  bool isPangram(String sentence) =>
      Iterable.generate(26, (i) => String.fromCharCode('A'.runes.first + i))
          .every((element) => sentence.toUpperCase().contains(element));
}
