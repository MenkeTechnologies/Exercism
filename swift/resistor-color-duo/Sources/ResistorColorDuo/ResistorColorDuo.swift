import Foundation

enum ResistorColorDuo: String, CaseIterable {
    case black, brown, red, orange, yellow, green, blue, violet, grey, white
    static func value(for color: String) -> Int {
        guard let colorEnum = ResistorColorDuo(rawValue: color.lowercased()) else {
            return -1
        }
        return ResistorColorDuo.allCases.firstIndex(of: colorEnum)!
    }
    static func value(for values: [String]) -> Int {
        Int(values[0..<2].map { String(ResistorColorDuo.value(for: $0)) }.joined(separator: "")) ?? -1
    }
}
