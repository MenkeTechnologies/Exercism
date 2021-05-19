//Solution goes in Sources

public class Year {

    public let isLeapYear: Bool

    public init(calendarYear:Int)
    {
        if calendarYear % 4 == 0 {
            if calendarYear % 100 == 0{

                if calendarYear % 400 == 0{

                    isLeapYear = true;
                    return
                }

            } else {
                isLeapYear = true;
                return
            }
        }
        isLeapYear = false;
    }

}