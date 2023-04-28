create = function(row, col) {
  stopifnot(row >= 0 & row <= 7 & col >= 0 & col <= 7)
  c(row, col)
}
can_attack = function(queen1, queen2) {
  dx = abs(queen1[1] - queen2[1])
  dy = abs(queen1[2] - queen2[2])
  dx == 0 | dy == 0 | dx == dy
}

