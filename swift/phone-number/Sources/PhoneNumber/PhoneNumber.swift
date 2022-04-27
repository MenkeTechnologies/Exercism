import Foundation

class PhoneNumber {

    let regex = #"^\s*(\+?1?\s*)?\(?([2-9]\d{2})\)?[-.\s]*([2-9]\d{2})[-.\s]*(\d{4})\s*$"#

    public var number: String = "0000000000"
    public let areaCode: String

    private let prefix: String
    private let post: String

    public init(_ num: String) {

        let captureRegex = try! NSRegularExpression(
                pattern: regex,
                options: []
        )

        let range = NSRange(num.startIndex..<num.endIndex, in: num)
        let matches = captureRegex.matches(in: num, range: range)

        guard let match = matches.first else {
            areaCode = ""
            prefix = ""
            post = ""
            return
        }

        areaCode = String(num[Range(match.range(at: 2), in: num)!])
        prefix = String(num[Range(match.range(at: 3), in: num)!])
        post = String(num[Range(match.range(at: 4), in: num)!])

        number = "\(areaCode)\(prefix)\(post)"

    }
}

extension PhoneNumber: CustomStringConvertible {
    var description: String {
        "(\(areaCode)) \(prefix)-\(post)"
    }

}
