enum NumberType {
    case perfect
    case deficient
    case abundant
}

class NumberClassifier {

    public var classification: NumberType

    public init(number: Int) {

        let sum = (1..<number).filter {
            number % $0 == 0
        }.reduce(0, +)

        if sum < number {
            classification = .deficient
        } else if sum > number {
            classification = .abundant
        } else {
            classification = .perfect
        }

    }
}
