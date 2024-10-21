keep = function(lst, f) {
  lst[sapply(lst, f)]
}

discard = function(lst, f) {
  keep(lst, function(x) { !f(x)})
}
