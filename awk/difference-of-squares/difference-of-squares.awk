BEGIN { FS = "," }

function sum_of_squares(n) {
  sum = 0
  for (i = 0; i <= n; ++i) sum += i ^ 2
  return sum
}
function square_of_sum(n) {
  square = 0
  for (i = 1; i <= n; ++i) square += i
  return square ^ 2
}

function difference(n) { return square_of_sum(n) - sum_of_squares(n) }


{
    f=$1; print(@f($2))
}

