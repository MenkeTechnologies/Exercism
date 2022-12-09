class ListOps {
  construct new(ary) { _lst = ary[0..-1] }

  construct new() { _lst = [] }

  toList { _lst[0..-1] }

  add(n) { _lst.add(n) }

  addAll(ary) {
    for (n in ary.toList) {
      _lst.add(n)
    }
    return this
  }

  addList(list) { _lst.addAll(list) }

  iterate(iterator) {
    return _lst.iterate(iterator)
  }
  iteratorValue(iterator) { _lst.iteratorValue(iterator) }

  +(ary) { type.new(_lst).addAll(ary) }

  static concat(lsts) {
    var it = ListOps.new()
    for (l in lsts) {
      it.addList(l)
    }
    return it
  }

  where(f) {
    var res = []
    for (n in _lst) {
      if (f.call(n)) {
        res.add(n)
      }
    }
    _lst = res
    return this
  }

  count { _lst.count }

  map(f) {
    var res = []
    for (n in _lst) {
      res.add(f.call(n))
    }
    _lst = res
    return this
  }

  reduce(acc, f) {
    for (n in _lst) {
      acc = f.call(acc, n)
    }
    return acc
  }

  reduceRight(acc, f) {
    for (i in 0..._lst.count) {
      acc = f.call(_lst[_lst.count - i - 1], acc)
    }
    return acc
  }

  reverse() {
    var res = []
    for (i in 0..._lst.count) {
      res.add(_lst[_lst.count - i - 1])
    }
    _lst = res
    return this
  }
}
