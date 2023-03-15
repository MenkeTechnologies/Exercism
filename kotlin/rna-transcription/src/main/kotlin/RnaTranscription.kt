fun transcribeToRna(s: String) = s.toCharArray().map { xform(it) }.joinToString("")

private fun xform(c: Char) =
    when (c) {
        'G' -> {
            'C'
        }

        'C' -> {
            'G'
        }

        'T' -> {
            'A'
        }

        'A' -> {
            'U'
        }

        else -> {
            throw RuntimeException("invalid dna $c")
        }
    }
