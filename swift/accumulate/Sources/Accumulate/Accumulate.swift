extension Array {

    func accumulate<T>(_ fn: (Element) -> T) -> [T] {
        reduce([]) { $0 + [fn($1)] }
    }
}
