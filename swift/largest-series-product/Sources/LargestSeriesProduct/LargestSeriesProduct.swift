struct NumberSeries {

    enum NumberSeriesError: Error {
        case spanLongerThanStringLength
        case invalidCharacter
        case negativeSpan
    }

    let string: String

    init(_ string: String) {
        self.string = string
    }

    func largestProduct(_ span: Int) throws -> Int {

        let windows = try string.windows(span)
        let largest = windows.map { $0.reduce(1, *) }.max()

        return largest ?? 1
    }
}

extension String {

    func windows(_ span: Int) throws -> [[Int]] {

        guard span >= 0 else {
            throw NumberSeries.NumberSeriesError.negativeSpan
        }
        guard span <= self.count else {
            throw NumberSeries.NumberSeriesError.spanLongerThanStringLength
        }
        guard allSatisfy({ $0.isNumber }) else {
            throw NumberSeries.NumberSeriesError.invalidCharacter
        }
        let lst = self.compactMap {
            $0.wholeNumberValue
        }
        return (0...lst.count - span).map {
            Array(lst[$0..<$0 + span])
        }
    }

}
