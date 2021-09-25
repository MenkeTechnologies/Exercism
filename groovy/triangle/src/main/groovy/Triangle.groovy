class Triangle {

    def uniq
    def valid

    Triangle(a, b, c) {
        def list = [a, b, c]
        list.sort()
        valid = list.every { it > 0 } && list[0] + list[1] >= list[2]
        uniq = list.unique().size()
    }

    boolean isEquilateral() {
        valid && uniq == 1
    }

    boolean isIsosceles() {
        valid && uniq <= 2
    }

    boolean isScalene() {
        valid && uniq == 3
    }

}
