fun <T> List<T>.customAppend(list: List<T>): List<T> = listOf(this, list).flatten()

fun List<Any>.customConcat(): List<Any> = flattenRec(listOf(this))

fun flattenRec(source: Collection<Any?>): List<Any> = source.filterNotNull()
        .flatMap { if (it is Collection<*>) flattenRec(it) else listOf(it) }
        .toList()

fun <T> List<T>.customFilter(predicate: (T) -> Boolean): List<T> =
        fold(mutableListOf()) { acc, n -> if (predicate(n)) acc += n; acc }

val List<Any>.customSize: Int get() = size

fun <T, U> List<T>.customMap(transform: (T) -> U): List<U> = fold(mutableListOf()) { acc, n -> acc += transform(n); acc }

fun <T, U> List<T>.customFoldLeft(initial: U, f: (U, T) -> U): U = fold(initial, f)

fun <T, U> List<T>.customFoldRight(initial: U, f: (T, U) -> U): U = foldRight(initial, f)

fun <T> List<T>.customReverse(): List<T> = foldRight(mutableListOf()) { n, acc -> acc += n;acc }
