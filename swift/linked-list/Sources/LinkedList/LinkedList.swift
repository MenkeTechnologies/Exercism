final class Deque<T> {
    private var values = [T]()

    func push(_ value: T) {
        values.append(value)
    }

    func pop() -> T? {
        values.removeLast()
    }

    func shift() -> T? {
        values.removeFirst()
    }

    func unshift(_ value: T) {
        values.insert(value, at: 0)
    }
}
