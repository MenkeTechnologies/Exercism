class RobotName {

    def name
    def random = new Random()
    def alpha = ('A'..'Z')

    RobotName() {
        gen()
    }

    private def gen() {
        name = (1..5).collect {
            it <= 2 ? alpha[random.nextInt(26)] : random.nextInt(10).toString()
        }.join("")
    }

    def reset() {
        gen()
    }
}
