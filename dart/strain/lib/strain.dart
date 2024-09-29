class Strain {
  List<T> keep<T>(List<T> lst, bool f(T element)) {
    final res = <T>[];
    for (final elem in lst)
      if (f(elem))
        res.add(elem);
    return res;
  }
  List<T> discard<T>(List<T> lst, bool f(T element)) {
    return keep(lst, (elem) => !f(elem));
  }
}
