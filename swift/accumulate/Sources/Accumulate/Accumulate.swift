//Solution goes in Sources

extension Array {

    func accumulate<T>(_ clo: (Element) -> T) -> [T] {

        var r: [T] = []

        forEach {
            r.append(clo($0))
        }

        return r

    }
}
