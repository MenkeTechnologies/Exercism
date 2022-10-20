export class CustomSet<T> {

  private _elements: Map<T, undefined>

  constructor(elements: T[] = []) {
    const iterable = elements.reduce(
      (acc, elem) => acc.concat( [[ elem, undefined ]] ),
      new Array<[T, undefined]>()
    )
    this._elements = new Map(iterable)
  }
  get elements(): T[] {
    return [...this._elements.keys()]
  }
  get size(): number {
    return this._elements.size
  }
  empty(): boolean {
    return this.size === 0
  }
  add(element: T): CustomSet<T> {
    this._elements.set(element, undefined)
    return this
  }
  contains(element: T): boolean {
    return this._elements.has(element)
  }
  subset(other: CustomSet<T>): boolean {
    return this.elements.every((elem) => other.contains(elem))
  }
  disjoint(other: CustomSet<T>): boolean {
    return this.elements.every((elem) => !other.contains(elem))
  }
  eql(other: CustomSet<T>): boolean {
    return this.size === other.size && this.subset(other)
  }
  intersection(other: CustomSet<T>): CustomSet<T> {
    return new CustomSet( this.elements.filter((e) => other.contains(e)) )
  }
  difference(other: CustomSet<T>): CustomSet<T> {
    return new CustomSet( this.elements.filter((e) => !other.contains(e)) )
  }
  union(other: CustomSet<T>): CustomSet<T> {
    return new CustomSet( this.elements.concat( other.difference(this).elements ))
  }
}

