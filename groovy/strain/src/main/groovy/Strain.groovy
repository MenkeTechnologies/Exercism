class Strain {

    static Collection keep(Collection collection, Closure predicate) {
        
        def res = []

        collection.forEach{ predicate(it) && res << it }

        res

    }

    static Collection discard(Collection collection, Closure predicate) {

        keep(collection, { !predicate(it) })

    }
}
