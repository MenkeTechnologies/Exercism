class Hamming {

    def distance(String strand1, String strand2) {
        if (strand1.length() != strand2.length()) {
            throw new ArithmeticException("not equal lengths")
        }

        def zip = [strand1.toCharArray(), strand2.toCharArray()].transpose()

        zip.inject 0, { res, i ->
            if (i[0] == i[1]) {
                return res
            }
            ++res
        }

    }

}