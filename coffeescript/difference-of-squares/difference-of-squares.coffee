module.exports = class DifferenceOfSquares
  @squareOfSum: (n) ->
    ([1..n].reduce (acc, n) -> acc + n) ** 2
    
  @sumOfSquares: (n) ->
    ([1..n].reduce (acc, n) -> acc + n ** 2)
    
  @differenceOfSquares: (n) ->
    @squareOfSum(n) - @sumOfSquares(n)
