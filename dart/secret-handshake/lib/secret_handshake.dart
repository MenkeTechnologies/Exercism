class SecretHandshake {
    final dict = const {'wink': 1, 'double blink': 2, 'close your eyes': 4, 'jump': 8};
    List<String> commands(int mask) {
        List<String> r = dict.keys.where((key) => mask & dict[key]! > 0).toList();
        return mask & 16 == 0 ? r : r.reversed.toList();
    }
}
