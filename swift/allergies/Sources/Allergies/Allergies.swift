enum Allergy: UInt, CaseIterable {
    case eggs = 1
    case peanuts = 2
    case shellfish = 4
    case strawberries = 8
    case tomatoes = 16
    case chocolate = 32
    case pollen = 64
    case cats = 128
}

class Allergies {

    let mask: UInt

    public init(_ mask: UInt) {
        self.mask = mask
    }

    public func hasAllergy(_ allergy: Allergy) -> Bool {
        allergy.rawValue & mask > 0
    }
}
