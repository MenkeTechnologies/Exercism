import Foundation

enum ResistorColor: String, CaseIterable {
    case black, brown, red, orange, yellow, green, blue, violet, grey, white
    
    static func colorCode(for color: String) -> Int {
        guard let colorEnum = ResistorColor(rawValue: color.lowercased()) else {
            return -1
        }
        return ResistorColor.allCases.firstIndex(of: colorEnum)!
    }
    static var colors : [String] {
        return ResistorColor.allCases.map { $0.rawValue }
    }
}
