package reverse

func Reverse(input string) string {
    var orig = []rune(input)
    var rvs = []rune(input)

    var j = 0
    for i := len(orig) - 1; i >= 0; i-- {
        rvs[j] = orig[i]
        j++
    }

    return string(rvs)

}
