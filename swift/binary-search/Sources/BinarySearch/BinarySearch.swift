//Solution goes in Sources

enum BinarySearchError: Error {

    case unsorted
}

class BinarySearch {

    public var list: [Int]

    public var middle: Int

    public init(_ ary: [Int]) throws {

        if ary != ary.sorted() {
            throw BinarySearchError.unsorted
        }

        list = ary

        middle = list.count / 2


    }

    public func searchFor(_ search: Int) -> Int? {

        if list.isEmpty {
            return nil
        }

        var left = 0
        var right = list.count - 1

        while true {

            if left > right {
                return nil
            }

            let mid = (left + right) / 2

            if search == list[mid] {
                return mid
            } else if search < list[mid] {
                right = mid - 1
            } else {
                left = mid + 1
            }

        }

    }
}
