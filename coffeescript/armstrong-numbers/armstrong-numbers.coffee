module.exports = class 
  @isArmstrongNumber: (n) ->
    digits = n.toString().split ''
    n == digits.reduce (sum, digit) ->
      sum + Math.pow digit, digits.length
    , 0
