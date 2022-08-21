export class List {
  values = []

  constructor(values = []) {
    this.values = [...values]
  }

  append(list) {
    this.values = [...this.values, ...list.values]
    return this
  }

  concat(lists) {
    for (let list of lists.values) if (list.values) this.values = [...this.values, ...list.values]
    return this
  }

  filter(f) {
    let res = []
    for (let v of this.values) res = f(v) ? [...res, v] : res
    this.values = res
    return this
  }

  map(f) {
    let res = []
    for (let v of this.values) res = [...res, f(v)]
    this.values = res
    return this
  }

  length() {
    let res = 0
    for (let _v of this.values) ++res
    return res
  }

  foldl(f, init) {
    let acc = init
    for (let v of this.values) acc = f(acc, v)
    return acc
  }

  foldr(f, init) {
    let acc = init
    for (let i = this.length() - 1; i >= 0; i--) acc = f(acc, this.values[i])
    return acc
  }

  reverse() {
    let res = []
    for (let v of this.values) res = [v, ...res]
    this.values = res
    return this
  }
}
