import Foundation

class PhoneNumber {

    let regex = #"^\s*(\+?1?\s*)?\(?([2-9]\d{2})\)?[-.\s]*([2-9]\d{2})[-.\s]*(\d{4})\s*$"#

    public var number: String = "0000000000"
    public let areaCode: String

    private let prefix: String
    private let post: String

    public init(_ input: String) {

        let captureRegex = try! NSRegularExpression(
                pattern: regex,
                options: []
        )

        let range = NSRange(input.startIndex..<input.endIndex, in: input)
        let matches = captureRegex.matches(in: input, range: range)

        guard let match = matches.first else {
            areaCode = ""
            prefix = ""
            post = ""
            return
        }

        areaCode = String(input[Range(match.range(at: 2), in: input)!])
        prefix = String(input[Range(match.range(at: 3), in: input)!])
        post = String(input[Range(match.range(at: 4), in: input)!])

        number = "\(areaCode)\(prefix)\(post)"

    }
}

extension PhoneNumber: CustomStringConvertible {
    var description: String {
        "(\(areaCode)) \(prefix)-\(post)"
    }

}
