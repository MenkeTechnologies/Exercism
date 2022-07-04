fun sum n f = foldl op+ 0 (List.tabulate (n + 1, f))
fun square n = n * n
fun squareOfSum n = square (sum n (fn x => x))
fun sumOfSquares n = sum n square

fun differenceOfSquares n = squareOfSum n - sumOfSquares n;
