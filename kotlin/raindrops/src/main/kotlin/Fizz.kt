val MAP = mapOf(3 to "Fizz", 5 to "Buzz")
fun main() {

    (1..100).joinToString("\n") { n ->
        MAP.filterKeys { n % it == 0 }.values.joinToString("").ifEmpty { "$n" }
    }
}
