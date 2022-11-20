struct CustomSet<T: Equatable & Hashable & Comparable>: Equatable {
    private var elements: Set<T>

    var size: Int {
        elements.count
    }
    var toSortedArray: [T] {
        Array(elements).sorted()
    }

    init(_ elements: [T]) {
        self.elements = Set(elements)
    }

    mutating func delete(_ value: T) {
        elements.remove(value)
    }

    mutating func put(_ value: T) {
        elements.insert(value)
    }

    func containsMember(_ value: T) -> Bool {
        elements.contains(value)
    }

    mutating func removeAll() {
        elements.removeAll()
    }

    func isSupersetOf(_ customSet: CustomSet) -> Bool {
        elements.isSuperset(of: customSet.elements)
    }

    func difference(_ customSet: CustomSet) -> CustomSet {
        var set = CustomSet([])
        set.elements = elements.subtracting(customSet.elements)
        return set
    }

    func union(_ customSet: CustomSet) -> CustomSet {
        var set = CustomSet([])
        set.elements = elements.union(customSet.elements)
        return set
    }

    func intersection(_ customSet: CustomSet) -> CustomSet {
        var set = CustomSet([])
        set.elements = elements.intersection(customSet.elements)
        return set
    }

    func isDisjoint(_ customSet: CustomSet) -> Bool {
        elements.isDisjoint(with: customSet.elements)
    }

    static func ==(lhs: CustomSet<T>, rhs: CustomSet<T>) -> Bool {
        lhs.elements == rhs.elements
    }
}
