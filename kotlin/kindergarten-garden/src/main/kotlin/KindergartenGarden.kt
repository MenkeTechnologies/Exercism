class KindergartenGarden(private val diagram: String) {
    companion object {
        private val students = listOf( "Alice", "Bob", "Charlie", "David", "Eve", "Fred", "Ginny", "Harriet", "Ileana", "Joseph", "Kincaid", "Larry" )
        private val plants = mapOf( 'G' to "grass", 'C' to "clover", 'R' to "radishes", 'V' to "violets" )
    }

    fun getPlantsOfStudent(student: String) = diagram.split("\n")
        .map { it.chunked(2)[students.indexOf(student)] }.flatMap { it.toList() }.map { plants[it]!! }
}
