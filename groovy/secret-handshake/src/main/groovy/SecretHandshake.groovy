class SecretHandshake {

    static def MAP = [
            0b1   : "wink",
            0b10  : "double blink",
            0b100 : "close your eyes",
            0b1000: "jump",
    ]
    static def RVS = 0b10000

    static List<String> commands(int number) {

        def cmds = []

        MAP.each { if (it.key & number) cmds << it.value }

        if (number & RVS) {
            cmds = cmds.reverse()
        }

        cmds
    }
}
