class Strain {

    static Collection keep(Collection collection, Closure predicate) {
        collection.inject([]) { acc, n -> predicate(n) ? acc << n : acc }
    }

    static Collection discard(Collection collection, Closure predicate) {
        keep(collection, { !predicate(it) })
    }
}
