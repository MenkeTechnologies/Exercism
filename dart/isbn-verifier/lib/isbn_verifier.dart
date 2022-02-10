bool isValid(String s) {
  if (RegExp(r"^\d-?\d{3}-?\d{5}-?[\dX]$").hasMatch(s) == false) return false;

  return s.replaceAll('-', '')
              .split('')
              .reversed
              .toList()
              .asMap()
              .map(
                  (k, v) => MapEntry(k, v == 'X' ? 10 : int.parse(v) * (k + 1)))
              .values
              .reduce((acc, n) => acc + n) %
          11 ==
      0;
}
