class PhoneNumber(num: String) {

    var number: String? = null

    init {

        val regex = Regex(
            """
            \s*(\+?1?\s*)?\(?([2-9]\d{2})\)?[-.\s]*([2-9]\d{2})[-.\s]*(\d{4})\s*
        """.trimIndent()
        )
        require(regex.matches(num))

        val matchResult = regex.find(num)

        val str = matchResult?.groupValues?.get(2) +
                matchResult?.groupValues?.get(3) +
                matchResult?.groupValues?.get(4)

        number = str

    }

}
