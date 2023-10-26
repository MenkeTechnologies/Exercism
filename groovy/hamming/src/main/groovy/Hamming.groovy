class Hamming {

    def distance(String strand1, String strand2) {
        if (strand1.length() != strand2.length()) {
            throw new ArithmeticException("not equal lengths")
        }

        [strand1.toCharArray(), strand2.toCharArray()].transpose().count { it[0] != it[1] }

    }

}
