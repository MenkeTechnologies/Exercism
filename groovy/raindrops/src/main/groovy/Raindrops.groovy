class Raindrops {

    def convert(num) {
        def str = ""

        if (num % 3 == 0) {
            str += "Pling"
        }
        if (num % 5 == 0) {
            str += "Plang"
        }
        if (num % 7 == 0) {
            str += "Plong"
        }

        if (str == "") {
            str += num
        }

        str

    }

}
