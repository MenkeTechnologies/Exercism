score = function(x, y) {
    dist = sqrt(x ^ 2 + y ^ 2)
    ifelse(dist > 10, 0, ifelse(dist > 5, 1, ifelse(dist > 1, 5, 10)))
}
