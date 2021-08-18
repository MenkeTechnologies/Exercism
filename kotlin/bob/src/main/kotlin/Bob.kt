object Bob {
    fun hey(input: String): String {

        val trimmed = input.replace("""\s+""".toRegex(), "")

        if (trimmed.isEmpty()) {
            return "Fine. Be that way!"
        }


        if ("""[A-Z]""".toRegex().containsMatchIn(trimmed) &&
            !"""[a-z]""".toRegex().containsMatchIn(trimmed)
        ) {


            if ("""\?$""".toRegex().containsMatchIn(trimmed)) {
                return "Calm down, I know what I'm doing!"
            }

            return "Whoa, chill out!"

        }


        if ("""\?$""".toRegex().containsMatchIn(trimmed)) {
            return "Sure."
        }


        return "Whatever."


    }
}
