import 'dart:math';

class LargestSeriesProduct {
  int largestProduct(String input, int span) {
    if (RegExp(r'\D').hasMatch(input))
      throw ArgumentError('digits input must only contain digits');
    if (span > input.length)
      throw ArgumentError('span must be smaller than string length');
    if (span < 0) throw ArgumentError('span must not be negative');
    var res = 0;
    for (var i = 0; i <= input.length - span; ++i) {
      var product = input
          .substring(i, i + span)
          .split('')
          .fold(1, (acc, n) => acc * int.parse(n));
      res = max(res, product);
    }
    return res;
  }
}
