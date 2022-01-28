class School {
    private val students = mutableMapOf<Int, MutableList<String>>()
    fun add(student: String, grade: Int) {
        students.getOrPut(grade) { mutableListOf() }.add(student); students[grade]!!.sort()
    }

    fun grade(grade: Int) = students.getOrPut(grade) { mutableListOf() }
    fun roster() = students.toSortedMap().flatMap { it.value }
}
