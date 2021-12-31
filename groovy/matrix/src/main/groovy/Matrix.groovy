class Matrix {

    String str

    Matrix(String asString) {
        this.str = asString;
    }

    int[] row(int rowNumber) {
        str.split("\n").collect { it.trim().split("\\s+").collect { it.toInteger() } }[rowNumber]
    }

    int[] column(int columnNumber) {
        str.split("\n").inject([]) { acc, n ->
            n.trim().split("\\s+").eachWithIndex { it, idx ->
                acc[idx] == null ? acc[idx] = [it.toInteger()] : acc[idx] << it.toInteger()

            }

            acc

        }[columnNumber]
    }
}
