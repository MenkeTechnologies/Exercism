data class Year(val year: Int) {

    val isLeap = year % 4 == 0 && year % 100 != 0 || year % 400 == 0
}
