class ResistorColorDuo {

    static def map = [
            'black': 0,
            'brown': 1,
            'red': 2,
            'orange': 3,
            'yellow': 4,
            'green': 5,
            'blue': 6,
            'violet': 7,
            'grey': 8,
    ]

    static int value(List<String> colorsInput) {
        def res = ''
        res += map[colorsInput[0].toLowerCase()]
        res += map[colorsInput[1].toLowerCase()]

        Integer.valueOf(res)
    }
}
