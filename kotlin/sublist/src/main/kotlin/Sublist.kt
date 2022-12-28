import Relationship.*;

enum class Relationship { EQUAL, SUBLIST, SUPERLIST, UNEQUAL }

fun <T> List<T>.relationshipTo(other: List<T>) =
    if (this == other) EQUAL
    else if (other.isEmpty() || size > other.size && windowed(other.size).contains(other)) SUPERLIST
    else if (isEmpty() || size < other.size && other.windowed(size).contains(this)) SUBLIST
    else UNEQUAL
