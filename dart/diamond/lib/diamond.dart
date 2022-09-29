class Diamond {
  List<String> rows(String letter) {
    var res = <String>[];
    var a = 'A'.codeUnitAt(0);
    var diff = letter.codeUnitAt(0) - a;
    for (var i = 0; i <= diff; ++i) {
      var halfRow = ' ' * (diff - i) + String.fromCharCode(a + i) + ' ' * i;
      var list = halfRow.runes.map((r) => String.fromCharCode(r)).toList();
      res.add(list.followedBy(list.reversed.skip(1)).join());
    }
    return res.followedBy(res.reversed.skip(1)).toList();
  }
}
