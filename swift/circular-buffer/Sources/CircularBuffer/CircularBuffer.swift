enum CircularBufferError: Error {
    case bufferEmpty
    case bufferFull
}

class CircularBuffer<T> {

    let capacity: Int
    var array: [T] = []


    var full: Bool {
        array.count == capacity
    }

    init(capacity: Int) {
        self.capacity = capacity
    }

    public func read() throws -> T {

        if array.isEmpty {
            throw CircularBufferError.bufferEmpty
        }

        return array.removeFirst()

    }


    public func write(_ itm: T) throws {

        if full {
            throw CircularBufferError.bufferFull
        }

        array.append(itm)

    }

    public func overwrite(_ itm: T) {

        if full {
            array.remove(at: 0)
        }
        try? write(itm)

    }

    public func clear() {
        array.removeAll(keepingCapacity: true)
    }
}
