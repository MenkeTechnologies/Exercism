enum BaseError: Error {
    case negativeDigit
    case invalidPositiveDigit
    case invalidInputBase
    case invalidOutputBase
}
struct Base {

    static func outputDigits(inputBase: Int, inputDigits: [Int], outputBase: Int) throws -> [Int] {
        guard inputBase > 1 else {
            throw BaseError.invalidInputBase
        }
        guard outputBase > 1 else {
            throw BaseError.invalidOutputBase
        }
        guard inputDigits.allSatisfy({ $0 >= 0 }) else {
            throw BaseError.negativeDigit
        }
        guard inputDigits.allSatisfy({ $0 < inputBase }) else {
            throw BaseError.invalidPositiveDigit
        }
        var output = [Int]()
        var sum = inputDigits.reduce(0) { $0 * inputBase + $1 }
        while sum > 0 {
            output.insert(sum % outputBase, at: 0)
            sum /= outputBase
        }

        return output
    }
}
