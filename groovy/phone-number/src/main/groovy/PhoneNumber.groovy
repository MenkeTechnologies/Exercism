class PhoneNumber {
    static final def REGEX = /^\s*(\+?1?\s*)?\(?([2-9]\d{2})\)?[-.\s]*([2-9]\d{2})[-.\s]*(\d{4})\s*$/

    static String clean(String input) {

        def m = input =~ REGEX

        if (!m) throw new Exception()

        m[0][2] + m[0][3] + m[0][4]

    }
}
