import Foundation

class Acronym {

    public class func abbreviate(_ text: String) -> String {

        try! NSRegularExpression(pattern: #"\b\w|[A-Z][a-z]"#)
                .matches(in: text, range: NSRange(text.startIndex..., in: text))
                .compactMap { Range($0.range, in: text) }
                .compactMap { text[$0].first }
                .map { String($0) }
                .joined().uppercased()


    }
}
