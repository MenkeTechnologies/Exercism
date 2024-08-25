return {
  eat_ghost = function(a, b) return a and b end,
  score = function(a, b) return a or b end,
  lose = function(a, b) return not a and b end,
  win = function(a, b, c) return a and b or not c end,
}
