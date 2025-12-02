func modifier(_ score: Int) -> Int {
    Int((Double(score - 10) / 2.0).rounded(.down))
}

func ability() -> Int {
    (0...3).map{ _ in Int.random(in: 1...6) }.sorted().dropFirst().reduce(0, +)
}

struct DndCharacter {
    let strength: Int = ability()
    let dexterity: Int = ability()
    let constitution: Int = ability()
    let intelligence: Int = ability()
    let wisdom: Int = ability()
    let charisma: Int = ability()
    var hitpoints: Int { 10 + modifier(constitution) }
}

