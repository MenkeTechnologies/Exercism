//Solution goes in Sources

import Foundation

class Grains {

    static func square(_ i: Int) throws -> UInt {

        if i < 1 {

            throw GrainsError.inputTooLow("Input[\(i)] invalid. Input should be between 1 and 64 (inclusive)")
        }

        if i > 64 {

            throw GrainsError.inputTooHigh("Input[\(i)] invalid. Input should be between 1 and 64 (inclusive)")
        }


        return UInt(pow(2.0, Double(i - 1)))

    }

    static var total = (1...64).map { try! square($0) }.reduce(0, +)

    enum GrainsError: Error {
        case inputTooHigh(String)
        case inputTooLow(String)
    }

}
