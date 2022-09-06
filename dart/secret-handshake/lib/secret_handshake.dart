class SecretHandshake {
    final _acts = const {'wink': 1, 'double blink': 2, 'close your eyes': 4, 'jump': 8};
    List<String> commands(int mask) {
        List<String> r = _acts.keys.where((key) => mask & _acts[key]! != 0).toList();
        return mask & 16 == 0 ? r : r.reversed.toList();
    }
}
