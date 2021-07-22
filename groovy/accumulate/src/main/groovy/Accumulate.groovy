class Accumulate {

    static Collection accumulate(Collection collection, Closure func) {
        def res = []
        collection.each { res << func.call(it)}

        res
    }

}
