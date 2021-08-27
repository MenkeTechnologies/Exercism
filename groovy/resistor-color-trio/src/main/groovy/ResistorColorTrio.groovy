class ResistorColorTrio {

    static def map = [
            'black' : 0,
            'brown' : 1,
            'red'   : 2,
            'orange': 3,
            'yellow': 4,
            'green' : 5,
            'blue'  : 6,
            'violet': 7,
            'grey'  : 8,
    ]

    static String label(List<String> colorsInput) {

        def res = ''
        res += map[colorsInput[0].toLowerCase()]
        res += map[colorsInput[1].toLowerCase()]
        def z = map[colorsInput[2].toLowerCase()]
        for (i in 0..<z) {
            res += '0'
        }

        def size = Integer.valueOf(res)
        def cnt = 0

        while (size.intdiv(1000) > 0) {
            size = size.intdiv(1000)
            ++cnt
        }

        switch (cnt) {
            case 0:
                return "$size ohms"
            case 1:
                return "$size kiloohms"
            case 2:
                return "$size megaohms"
            default:
                break;
        }


    }


}
