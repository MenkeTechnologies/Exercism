struct ListOps {
    static func append<T>(_ array1: [T], _ array2: [T]) -> [T] {

        array1 + array2
    }

    static func concat<T>(_ arrays: [T]...) -> [T] {
        var a: [T] = []
        for item in arrays {
            a += item

        }
        return a
    }

    static func filter<T>(_ array: [T], isIncluded: (T) -> Bool) -> [T] {

        array.filter {
            isIncluded($0)
        }
    }

    static func length<T>(_ array: [T]) -> Int {
        array.count
    }

    static func map<T>(_ array: [T], transform: (T) -> T) -> [T] {
        array.map {
            transform($0)
        }
    }

    static func foldLeft<T>(_ array: [T], accumulated: T, combine: (T, T) -> T) -> T {
        var r = accumulated
        array.forEach {
            r = combine(r, $0)
        }

        return r
    }

    static func foldRight<T>(_ array: [T], accumulated: T, combine: (T, T) -> T) -> T {
        var r = accumulated
        array.reversed().forEach {
            r = combine($0, r)
        }

        return r
    }

    static func reverse<T>(_ array: [T]) -> [T] {
        array.reversed()
    }

}
