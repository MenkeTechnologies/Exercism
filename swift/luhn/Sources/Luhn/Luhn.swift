class Luhn {
    public var isValid = false

    init(_ str: String) {

        let invalid = str.drop(while: { $0.isWhitespace || $0.isNumber })

        if !invalid.isEmpty {
            return
        }

        let nums = str.compactMap {
            $0.wholeNumberValue
        }

        if nums.count < 2 {
            return
        }

        let sum = nums.reversed().enumerated().map {
            if $0.offset % 2 == 1 {
                var r = $0.element * 2
                if r > 9 {
                    r -= 9
                }
                return r
            } else {
                return $0.element

            }
        }.reduce(0, +)

        isValid = sum % 10 == 0

    }

}
