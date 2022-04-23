class Leap {

    private int y;

    Leap(Integer year) {
        y = year;
    }

    def isLeapYear() {
        y % 4 == 0 && y % 100 != 0 || y % 400 == 0
    }



}
