class Accumulate {

    static Collection accumulate(Collection collection, Closure func) {
        collection.inject([]) { acc, it -> acc << func.call(it) }
    }

}
