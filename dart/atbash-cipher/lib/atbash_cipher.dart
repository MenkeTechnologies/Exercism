class AtbashCipher {
  Map<String,String> encodeChar = {
    'a': 'z',
    'b': 'y',
    'c': 'x',
    'd': 'w',
    'e': 'v',
    'f': 'u',
    'g': 't',
    'h': 's',
    'i': 'r',
    'j': 'q',
    'k': 'p',
    'l': 'o',
    'm': 'n',
    'n': 'm',
    'o': 'l',
    'p': 'k',
    'q': 'j',
    'r': 'i',
    's': 'h',
    't': 'g',
    'u': 'f',
    'v': 'e',
    'w': 'd',
    'x': 'c',
    'y': 'b',
    'z': 'a',
    '0': '0',
    '1': '1',
    '2': '2',
    '3': '3',
    '4': '4',
    '5': '5',
    '6': '6',
    '7': '7',
    '8': '8',
    '9': '9',
  };
  String encode(String plainText) =>
      plainText
          .toLowerCase()
          .split('')
          .map((char) => encodeChar[char] ?? '')
          .join()
          .replaceAllMapped(RegExp(r'.{5}'), (match) => '${match[0]} ')
          .trimRight();
  String decode(String cipherText) =>
      cipherText
          .split('')
          .map((char) => encodeChar[char] ?? '')
          .join();
}
