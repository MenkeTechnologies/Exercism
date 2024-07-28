class RotationalCipher {
  String rotate({required String text, required int shiftKey}) =>
      String.fromCharCodes(text.runes.map((rune) => caesar(rune, shiftKey)));

  int caesar(int rune, int rotation) => switch (rune) {
        >= 65 && <= 90 => 65 + (rune - 65 + rotation) % 26,
        >= 97 && <= 122 => 97 + (rune - 97 + rotation) % 26,
        _ => rune,
      };
}
