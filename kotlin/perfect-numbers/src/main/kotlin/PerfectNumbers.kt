enum class Classification {
    DEFICIENT, PERFECT, ABUNDANT
}

fun classify(naturalNumber: Int): Classification {

    require(naturalNumber > 0)

    val su = (1..naturalNumber / 2).filter { naturalNumber % it == 0 }.sum()

    return if (su == naturalNumber) {
        Classification.PERFECT
    } else if (su < naturalNumber) {
        Classification.DEFICIENT
    } else {
        Classification.ABUNDANT
    }

}
