class ArmstrongNumber {

    static isArmstrongNumber(number) {

        def ary = number.toString().split("")
        ary.collect { it as Integer**ary.length }.sum() == number

    }

}
