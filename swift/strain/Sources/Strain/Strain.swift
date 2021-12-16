extension Array {
    func keep(_ clo: (Element) -> Bool) -> [Element] {
        filter {
            clo($0)
        }
    }

    func discard(_ clo: (Element) -> Bool) -> [Element] {
        filter {
            !clo($0)
        }
    }
}
