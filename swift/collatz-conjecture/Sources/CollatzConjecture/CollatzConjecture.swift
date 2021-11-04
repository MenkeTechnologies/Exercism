//Solution goes in Sources
extension String: Error {
}

class CollatzConjecture {

    public class func steps(_ i: Int) throws -> Int {

        if i < 1 {
            throw "err"
        }
        var cnt = 0
        var j = i

        while j != 1 {
            if j % 2 == 0 {
                j /= 2
            } else {
                j = 3 * j + 1

            }
            cnt += 1
        }
        return cnt
    }
}
