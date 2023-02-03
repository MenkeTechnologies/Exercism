import Foundation
enum Sublist {
    case equal, sublist, superlist, unequal
}
func classifier(lst1: [Int], lst2: [Int]) -> Sublist {
    guard !lst1.elementsEqual(lst2) else { return .equal}
    guard !lst1.reversed().elementsEqual(lst2), !lst2.reversed().elementsEqual(lst1) else { return .unequal }
    guard !lst2.isEmpty else { return .superlist }
    guard !lst1.isEmpty else { return .sublist }
    let s1 = lst1.map({ String($0) + ","}).joined()
    let s2 = lst2.map({ String($0) + "," }).joined()
    if s1.contains(s2) {
        return .superlist
    } else if s2.contains(s1) {
        return .sublist
    }
    return .unequal
}
