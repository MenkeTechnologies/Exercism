import Foundation

class Clock: Equatable {

    public var hours: Int
    public var minutes: Int

    init(hours: Int, minutes: Int) {

        self.hours = hours
        self.minutes = minutes

        adapt()

    }

    private func adapt() {
        while minutes >= 60 {
            hours += 1
            minutes -= 60
        }

        while minutes < 0 {
            hours -= 1
            minutes += 60
        }

        hours %= 24

        if hours < 0 {
            hours += 24
        }
    }

    convenience init(hours: Int) {
        self.init(hours: hours, minutes: 0)
    }

    public func add(minutes: Int) -> Clock {
        self.minutes += minutes
        adapt()
        return self
    }

    public func subtract(minutes: Int) -> Clock {
        self.minutes -= minutes
        adapt()
        return self

    }

    static func ==(lhs: Clock, rhs: Clock) -> Bool {

        lhs.minutes == rhs.minutes && lhs.hours == rhs.hours
    }

}

extension Clock: CustomStringConvertible {
    var description: String {
        let hours2 = String(format: "%.2d", hours)
        let minutes2 = String(format: "%.2d", minutes)
        return "\(hours2):\(minutes2)"
    }
}
