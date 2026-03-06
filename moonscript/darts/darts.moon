math = require "math"
score = (x, y) ->
  hypot = math.sqrt x^2 + y^2
  if hypot > 10
    return 0
  else if hypot > 5
   return 1
  else if hypot > 1
   return 5
  10
  
{ :score }