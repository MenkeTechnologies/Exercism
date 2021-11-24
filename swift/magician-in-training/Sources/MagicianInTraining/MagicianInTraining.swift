func getCard(at index: Int, from stack: [Int]) -> Int {
    stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
    var r = stack
    if let _ = r.firstIndex(of: index) {
        r[index] = newCard
    }
    return r
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {

    var r = stack
    r.append(newCard)
    return r
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
    var r = stack
    if let _ = r.firstIndex(of: index) {
        r.remove(at: index)
    }
    return r
}

func removeTopCard(_ stack: [Int]) -> [Int] {
    var r = stack
    let i = r.count - 1
    if i >= 0 {
        r.remove(at: i)
    }
    return r
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
    var r = stack
    r.insert(newCard, at: 0)
    return r
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
    var r = stack
    r.remove(at: 0)
    return r
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
    stack.count == size
}

func evenCardCount(_ stack: [Int]) -> Int {
    stack.filter {
        $0 % 2 == 0
    }.count
}
