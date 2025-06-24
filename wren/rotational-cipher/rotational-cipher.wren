class RotationalCipher {
  static rotate(s, shiftKey) {
    return s.bytes.map { |c| String.fromByte(
                                  c >= 65 && c <= 90 ? (c - 65 + shiftKey) % 26 + 65 :
                                  c >= 97 && c <= 122 ? (c - 97 + shiftKey) % 26 + 97 : c
                                ) }.join()
  }
}
