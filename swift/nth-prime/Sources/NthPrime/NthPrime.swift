import Foundation
class Prime {
    static func nth(_ num: Int) -> Int? {
        if num < 1 { return nil }
        var primeArray = [2]
        var curr = 3
        while primeArray.count < num {
            if primeArray.allSatisfy{curr % $0 != 0} {
                primeArray.append(curr)
            }
            curr += 2
        }
        return primeArray.last
    }
}
