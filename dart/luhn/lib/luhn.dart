class Luhn {
  bool valid(String value) {
    String nows = value.replaceAll(new RegExp(r'\s'), '');
    if (nows.length < 2 || nows.contains(new RegExp(r'\D'))) {
      return false;
    }

    int sum = 0;

    nows
        .split('')
        .reversed
        .map(int.parse)
        .toList()
        .asMap()
        .forEach((index, number) {
      int dbl = index.isOdd ? number * 2 : number;
      sum += dbl > 9 ? dbl - 9 : dbl;
    });
    return sum % 10 == 0;
  }
}
