public class Year {

    public let isLeapYear: Bool

    public init(calendarYear year:Int)
    {
        isLeapYear = year % 4 == 0 && year % 100 != 0 || year % 400 == 0
    }

}
