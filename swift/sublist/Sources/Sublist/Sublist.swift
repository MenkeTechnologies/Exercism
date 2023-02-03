import Foundation
enum Sublist {
    case equal, sublist, superlist, unequal
}
func classifier(listOne lst1: [Int], listTwo lst2: [Int]) -> Sublist {
    guard !lst1.elementsEqual(lst2) else { return .equal}
    guard !lst1.isEmpty else { return .sublist }
    guard !lst2.isEmpty else { return .superlist }
    let s1 = lst1.map { String($0)}.joined(separator: ",")
    let s2 = lst2.map { String($0)}.joined(separator: ",")
    if s1.contains(s2) {
        return .superlist
    } else if s2.contains(s1) {
        return .sublist
    }
    return .unequal
}
