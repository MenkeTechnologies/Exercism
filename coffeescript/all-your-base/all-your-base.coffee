module.exports = ({inputBase, outputBase, digits}) ->
  throw new Error "input base must be >= 2" if inputBase < 2
  throw new Error "output base must be >= 2" if outputBase < 2
  throw new Error "all digits must satisfy 0 <= d < input base" if digits.some ((digit) => digit < 0 or digit >= inputBase)
  sum = digits.reduce ((acc, n) => acc * inputBase + n), 0
  if sum is 0
    [0]
  else
    res = []
    while sum > 0
      res.unshift sum % outputBase
      sum //= outputBase
    res
