//Solution goes in Sources
extension Array where Element == String {

    func recite() -> String {

        indices.reduce("") {

            if ($1 != count - 1) {
                return $0 + "For want of a \(self[$1]) the \(self[$1 + 1]) was lost.\n"

            } else {
                return $0 + "And all for the want of a \(first!)."
            }

        }

    }

}
