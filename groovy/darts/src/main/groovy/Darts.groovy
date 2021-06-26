class Darts {

    static int score(x, y) {
        def d = Math.pow(Math.pow(x - 0, 2) + Math.pow(y - 0, 2), 0.5)
        
        if (d <= 1) {
            return 10
        } else if (d <= 5) {
            return 5
        } else if (d <= 10) {
            return 1
        }

        return 0
    }
}