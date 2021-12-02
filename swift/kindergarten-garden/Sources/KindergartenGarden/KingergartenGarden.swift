extension String {
    func chunked(_ size: Int) -> [String] {
        stride(from: 0, to: count, by: size).map {
            let start = index(startIndex, offsetBy: $0)
            let end = index(start, offsetBy: size, limitedBy: endIndex) ?? endIndex
            return String(self[start..<end])
        }
    }
}

enum Plant: Character {
    case clover = "C"
    case grass = "G"
    case radishes = "R"
    case violets = "V"
}

class Garden {

    var childMap: [String: [Plant]] = [:]

    init(_ str: String, children: [String] = ["Alice", "Bob", "Charlie", "David", "Eve", "Fred", "Ginny", "Harriet", "Ileana", "Joseph", "Kincaid", "Larry"]) {

        let rows = str.split(separator: "\n")
        guard rows.count == 2, rows.first?.count == rows.last?.count else {
            fatalError("Invalid garden")
        }

        let sorted = children.sorted()

        rows.forEach {
            String($0).chunked(2).enumerated().forEach {

                if  let p1 = Plant.init(rawValue: $0.element.first!), let p2 = Plant.init(rawValue: $0.element.last!) {

                    childMap[sorted[$0.offset], default: []].append(p1)
                    childMap[sorted[$0.offset]]!.append(p2)
                } else {
                    fatalError("invalid plants: \($0.element)")
                }
            }

        }


    }

    public func plantsForChild(_ s: String) -> [Plant] {
        childMap[s] ?? []
    }
}
