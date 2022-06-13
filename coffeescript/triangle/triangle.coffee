class Triangle
  constructor: (@a, @b, @c) ->
    ary = [@a, @b, @c].sort((a, b) => a - b)
    if ary.some((_) -> _ <= 0)
      throw "negative sides are illegal"
    else if ary[0] + ary[1] < ary[2]
      throw "violation of triangle inequality"
    @s = new Set(ary)
  kind: ->
    if @s.size == 1 then "equilateral" else if @s.size == 3 then "scalene" else "isosceles"

module.exports = Triangle
