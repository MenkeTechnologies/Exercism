//Solution goes in Sources

import Foundation

public class Gigasecond {

    let date: Date?
    let df: DateFormatter?

    public var description: String {

        if var fD = date {
            fD.addTimeInterval(1e9)
            return df!.string(from: fD)
        }

        return "error!"
    }


    public init?(from: String) {
        let df = DateFormatter()
        df.timeZone = TimeZone(abbreviation: "GMT")
        df.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"

        guard let date = df.date(from: from) else { return nil }

        self.df = df
        self.date = date
    }

}
