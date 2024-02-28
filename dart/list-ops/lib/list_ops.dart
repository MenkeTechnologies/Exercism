extension ListOps on List {
  void append<T>(List<T> other) {
    for (final each in other) {
      add(each);
    }
  }

  List<T> concat<T>() {
    final List<T> lst = [];
    for (final each in this) {
      lst.addAll(each);
    }
    return lst;
  }

  List<T> filter<T>(bool Function(T elem) pred) {
    final List<T> lst = [];
    for (final each in this) {
      if (pred(each)) {
        lst.add(each);
      }
    }
    return lst;
  }

  int count() {
    return length;
  }

  List<T> myMap<T>(T Function(T elem) f) {
    final List<T> lst = [];
    for (final each in this) {
      lst.add(f(each));
    }
    return lst;
  }

  U foldl<T, U>(U initial, U Function(U acc, T elem) f) {
    for (final each in this) {
      initial = f(initial, each);
    }
    return initial;
  }

  U foldr<T, U>(U initial, U Function(T elem, U acc) f) {
    for (final each in reversed) {
      initial = f(each, initial);
    }
    return initial;
  }

  List<T> reverse<T>() {
    final List<T> lst = [];
    for (final each in reversed) {
      lst.add(each);
    }
    return lst;
  }
}
