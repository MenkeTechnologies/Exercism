class Leap {

    private int year;

    Leap(Integer year) {
        this.year = year;
    }

    def isLeapYear() {

        if (year % 4 == 0) {
            if (year % 100 == 0) {
                if (year % 400 == 0) {
                    return true
                }
            } else {
                return true
            }
        }

        false
    }



}
